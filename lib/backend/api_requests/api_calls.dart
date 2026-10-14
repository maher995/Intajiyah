import 'dart:convert';
import '../cloud_functions/cloud_functions.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Gemini Group Code

class GeminiGroup {
  static String getBaseUrl() =>
      'https://generativelanguage.googleapis.com/v1beta';
  static Map<String, String> headers = {
    'x-goog-api-key': 'AQ.Ab8RN6Jc7DXMgUQW8puHc3YmqVq-2H4zM7nFVwMCqqyW1Gzjaw',
  };
}

/// End Gemini Group Code

class CategorizeCall {
  static Future<ApiCallResponse> call({
    String? title = '',
  }) async {
    final ffApiRequestBody = '''
{
  "contents": [{
    "parts": [{
      "text": "Classify this task title for a productivity app: <${escapeStringForJson(title)}>. Choose priority, effort and category only from the allowed values. highFocus is for urgent or demanding tasks, mediumEffort for moderate ones, lowEffort for light ones."
    }]
  }],
  "generationConfig": {
    "responseMimeType": "application/json",
    "responseSchema": {
      "type": "OBJECT",
      "properties": {
        "priority": {"type": "STRING", "enum": ["highFocus", "mediumEffort", "lowEffort"]},
        "effort": {"type": "STRING", "enum": ["low", "medium", "high"]},
        "category": {"type": "STRING", "enum": ["work", "study", "personal", "health"]}
      },
      "required": ["priority", "effort", "category"]
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'categorize',
      apiUrl: '/models/gemini-flash-latest:generateContent',
      callType: ApiCallType.POST,
      headers: {
        'x-goog-api-key':
            'AQ.Ab8RN6Jc7DXMgUQW8puHc3YmqVq-2H4zM7nFVwMCqqyW1Gzjaw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic resultText(dynamic response) => getJsonField(
        response,
        r'''$.candidates[0].content.parts[0].text''',
      );
}

class TranscribeAudioCall {
  static Future<ApiCallResponse> call({
    String? audioBase64 = '',
    String? audioMimeType = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'TranscribeAudioCall',
        'variables': {
          'audioBase64': audioBase64,
          'audioMimeType': audioMimeType,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? transcript(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.candidates[0].content.parts[0].text''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  final encoded = jsonEncode(input);
  return encoded.substring(1, encoded.length - 1);
}
