// Private API calls are routed from here. None are defined at the moment.

async function makeApiCall(context, data) {
  var callName = data["callName"] || "";
  var variables = data["variables"] || {};

  const callMap = {};

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

module.exports = { makeApiCall };
