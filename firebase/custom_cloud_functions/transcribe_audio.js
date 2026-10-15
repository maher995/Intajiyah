const { onCall, HttpsError } = require("firebase-functions/v2/https");
const { defineSecret } = require("firebase-functions/params");

const geminiKey = defineSecret("GEMINI_API_KEY");

const GEMINI_URL =
  "https://generativelanguage.googleapis.com/v1beta/models/gemini-flash-latest:generateContent";

exports.transcribeAudio = onCall(
  { secrets: [geminiKey], cors: true, timeoutSeconds: 120, memory: "512MiB" },
  async (request) => {
    if (!request.auth) {
      throw new HttpsError("unauthenticated", "Login required");
    }

    const d = request.data || {};
    const audioBase64 = d.audioBase64;
    const audioMimeType = d.audioMimeType;
    if (!audioBase64 || !audioMimeType) {
      throw new HttpsError(
        "invalid-argument",
        "audioBase64 and audioMimeType are required",
      );
    }

    const body = {
      contents: [
        {
          role: "user",
          parts: [
            {
              text: "Transcribe the speech exactly in its original language. Return only the transcript. Do not translate, summarize, or add commentary.",
            },
            { inlineData: { mimeType: audioMimeType, data: audioBase64 } },
          ],
        },
      ],
      generationConfig: { maxOutputTokens: 2048 },
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
      console.error("Gemini transcribe error", res.status, errText);
      throw new HttpsError("internal", "Gemini error " + res.status);
    }

    const data = await res.json();
    const transcript = data.candidates?.[0]?.content?.parts?.[0]?.text ?? "";
    return { transcript: transcript.trim() };
  },
);
