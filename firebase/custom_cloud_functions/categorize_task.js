const { onCall, HttpsError } = require("firebase-functions/v2/https");
const { defineSecret } = require("firebase-functions/params");

const geminiKey = defineSecret("GEMINI_API_KEY");

const PRIORITIES = ["highFocus", "mediumEffort", "lowEffort"];
const EFFORTS = ["low", "medium", "high"];
const CATEGORIES = ["work", "study", "personal", "health"];

const PRIORITY_LABELS = {
  highFocus: "High Focus",
  mediumEffort: "Medium Effort",
  lowEffort: "Low Effort",
};

const GEMINI_URL =
  "https://generativelanguage.googleapis.com/v1beta/models/gemini-flash-latest:generateContent";

// Pull the first {...} block out of the model text, even if it adds extra words
function extractJson(text) {
  if (!text) return null;
  const match = String(text).match(/\{[\s\S]*\}/);
  if (!match) return null;
  try {
    return JSON.parse(match[0]);
  } catch (e) {
    return null;
  }
}

exports.categorizeTask = onCall(
  { secrets: [geminiKey], cors: true },
  async (request) => {
    const d = request.data || {};
    const title = String(d.taskTitle || d.title || "").trim();
    if (title.length < 3) {
      throw new HttpsError("invalid-argument", "Title too short");
    }

    const body = {
      contents: [
        {
          parts: [
            {
              text: `Task: "${title}". Reply with ONLY a JSON object, no other words. priority must be one of highFocus (urgent or demanding), mediumEffort (moderate), lowEffort (light). effort_level must be one of low, medium, high. category must be one of work, study, personal, health. Format: {"priority":"...","effort_level":"...","category":"..."}`,
            },
          ],
        },
      ],
      generationConfig: {
        temperature: 0,
        maxOutputTokens: 1024,
        responseMimeType: "application/json",
        responseSchema: {
          type: "OBJECT",
          properties: {
            priority: { type: "STRING", enum: PRIORITIES },
            effort_level: { type: "STRING", enum: EFFORTS },
            category: { type: "STRING", enum: CATEGORIES },
          },
          required: ["priority", "effort_level", "category"],
        },
      },
    };

    const res = await fetch(GEMINI_URL, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "x-goog-api-key": geminiKey.value(),
      },
      body: JSON.stringify(body),
    });

    if (!res.ok) {
      const errText = await res.text();
      console.error("Gemini error", res.status, errText);
      throw new HttpsError("internal", "Gemini error " + res.status);
    }

    const data = await res.json();
    const text = data.candidates?.[0]?.content?.parts?.[0]?.text;
    const result = extractJson(text);

    if (!result) {
      console.error(
        "Could not read Gemini reply:",
        JSON.stringify(data).slice(0, 500),
      );
      throw new HttpsError("internal", "Bad Gemini reply");
    }

    const priority = PRIORITIES.includes(result.priority)
      ? result.priority
      : "mediumEffort";

    return {
      priority: priority, // highFocus / mediumEffort / lowEffort (matches the dropdown)
      priority_label: PRIORITY_LABELS[priority], // High Focus / Medium Effort / Low Effort (for display)
      effort_level: EFFORTS.includes(result.effort_level)
        ? result.effort_level
        : "medium",
      category: CATEGORIES.includes(result.category)
        ? result.category
        : "personal",
    };
  },
);
