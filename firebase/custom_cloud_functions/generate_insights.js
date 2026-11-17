const { onCall, HttpsError } = require("firebase-functions/v2/https");
const { defineSecret } = require("firebase-functions/params");

const GEMINI_API_KEY = defineSecret("GEMINI_API_KEY");

exports.generateInsights = onCall(
  { secrets: [GEMINI_API_KEY] },
  async (request) => {
    if (!request.auth) {
      throw new HttpsError("unauthenticated", "Sign in required");
    }
    const stats = String(request.data.stats || "").slice(0, 4000);

    const prompt =
      "You are a friendly productivity coach. Based on these monthly stats and the " +
      "user's recent journal notes: " +
      stats +
      ". Use the journal notes to understand " +
      "how the user felt, and reflect that in the strengths, improvements and message. " +
      "If there are no journal notes, do not mention journals. Do not quote the journal " +
      "text word for word. Return exactly 3 short strengths, 3 short improvement " +
      "suggestions, a tone of great or needs_work, and a 2 sentence encouraging message " +
      "that is honest about the results.";

    const res = await fetch(
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-flash-latest:generateContent",
      {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "x-goog-api-key": GEMINI_API_KEY.value(),
        },
        body: JSON.stringify({
          contents: [{ parts: [{ text: prompt }] }],
          generationConfig: {
            responseMimeType: "application/json",
            responseSchema: {
              type: "OBJECT",
              properties: {
                strengths: { type: "ARRAY", items: { type: "STRING" } },
                improvements: { type: "ARRAY", items: { type: "STRING" } },
                tone: { type: "STRING", enum: ["great", "needs_work"] },
                message: { type: "STRING" },
              },
              required: ["strengths", "improvements", "tone", "message"],
            },
          },
        }),
      },
    );

    if (!res.ok) {
      throw new HttpsError("internal", "Gemini request failed");
    }

    const data = await res.json();
    const text = data.candidates?.[0]?.content?.parts?.[0]?.text || "{}";

    try {
      return JSON.parse(text);
    } catch (e) {
      throw new HttpsError("internal", "Bad model response");
    }
  },
);
