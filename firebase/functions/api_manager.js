const axios = require("axios").default;
const qs = require("qs");

async function _transcribeAudioCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var audioBase64 = ffVariables["audioBase64"];
  var audioMimeType = ffVariables["audioMimeType"];

  var url = `https://generativelanguage.googleapis.com/v1beta/models/gemini-3.8-flash:generateContent`;
  var headers = {
    "Content-Type": `application/json`,
    "x-goog-api-key": `AQ.Ab8RN6LPVW_wsf82GKtSnSzIRqvFbA8RA-fPIdgTzsamN3UzeQ`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "contents": [
    {
      "role": "user",
      "parts": [
        {
          "text": "Transcribe the speech exactly in its original language. Return only the transcript. Do not translate, summarize, or add commentary."
        },
        {
          "inlineData": {
            "mimeType": ${audioMimeType == null ? "null" : `"${escapeStringForJson(audioMimeType)}"`},
            "data": ${audioBase64 == null ? "null" : `"${escapeStringForJson(audioBase64)}"`}
          }
        }
      ]
    }
  ],
  "generationConfig": {
    "maxOutputTokens": 2048,
    "thinkingConfig": {
      "thinkingLevel": "low"
    }
  }
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

/// Helper functions to route to the appropriate API Call.

async function makeApiCall(context, data) {
  var callName = data["callName"] || "";
  var variables = data["variables"] || {};

  const callMap = {
    TranscribeAudioCall: _transcribeAudioCall,
  };

  if (!(callName in callMap)) {
    return {
      statusCode: 400,
      error: `API Call "${callName}" not defined as private API.`,
    };
  }

  var apiCall = callMap[callName];
  var response = await apiCall(context, variables);
  return response;
}

async function makeApiRequest({
  method,
  url,
  headers,
  params,
  body,
  returnBody,
  isStreamingApi,
}) {
  return axios
    .request({
      method: method,
      url: url,
      headers: headers,
      params: params,
      responseType: isStreamingApi ? "stream" : "json",
      ...(body && { data: body }),
    })
    .then((response) => {
      return {
        statusCode: response.status,
        headers: response.headers,
        ...(returnBody && { body: response.data }),
        isStreamingApi: isStreamingApi,
      };
    })
    .catch(function (error) {
      return {
        statusCode: error.response.status,
        headers: error.response.headers,
        ...(returnBody && { body: error.response.data }),
        error: error.message,
      };
    });
}

const _unauthenticatedResponse = {
  statusCode: 401,
  headers: {},
  error: "API call requires authentication",
};

function createBody({ headers, params, body, bodyType }) {
  switch (bodyType) {
    case "JSON":
      headers["Content-Type"] = "application/json";
      return body;
    case "TEXT":
      headers["Content-Type"] = "text/plain";
      return body;
    case "X_WWW_FORM_URL_ENCODED":
      headers["Content-Type"] = "application/x-www-form-urlencoded";
      return qs.stringify(params);
  }
}
function escapeStringForJson(val) {
  if (typeof val !== "string") {
    return val;
  }
  return JSON.stringify(val).slice(1, -1);
}

module.exports = { makeApiCall };
