const functions = require("firebase-functions");
const axios = require("axios");

exports.categorizeTask = functions.https.onCall(async (data, context) => {
  const taskTitle = data.taskTitle;

  const API_KEY = process.env.GEMINI_API_KEY;

  const prompt = `
Analyze this task:

${taskTitle}

Return ONLY valid JSON.

Priority must be exactly one of:
- High Focus
- Medium Effort
- Low Effort

Effort level must be exactly one of:
- Low
- Medium
- High

Category must be exactly one of:
- Work
- Study
- Personal
- Health

Return ONLY:
{
  "priority": "",
  "effort_level": "",
  "category": ""
}
`;

  try {
    const response = await axios.post(
      `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${API_KEY}`,
      {
        contents: [
          {
            parts: [
              {
                text: prompt,
              },
            ],
          },
        ],
      },
    );

    const text =
      response?.data?.candidates?.[0]?.content?.parts?.[0]?.text || "";

    const match = text.match(/\{[\s\S]*\}/);

    if (!match) {
      throw new Error("No valid JSON returned");
    }

    return JSON.parse(match[0]);
  } catch (error) {
    console.error("Gemini Error:", error);

    return {
      priority: "Medium Effort",
      effort_level: "Medium",
      category: "Personal",
    };
  }
});
