const admin = require("firebase-admin/app");
admin.initializeApp();

const categorizeTask = require("./categorize_task.js");
exports.categorizeTask = categorizeTask.categorizeTask;
const transcribeAudio = require("./transcribe_audio.js");
exports.transcribeAudio = transcribeAudio.transcribeAudio;
const generateInsights = require("./generate_insights.js");
exports.generateInsights = generateInsights.generateInsights;
