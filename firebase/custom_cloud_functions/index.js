const admin = require("firebase-admin/app");
admin.initializeApp();

const categorizeTask = require("./categorize_task.js");
exports.categorizeTask = categorizeTask.categorizeTask;
