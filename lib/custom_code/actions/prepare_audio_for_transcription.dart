// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import '/flutter_flow/uploaded_file.dart';

Future<dynamic> prepareAudioForTranscription(
  FFUploadedFile audioFile,
) async {
  final bytes = audioFile.bytes;

  if (bytes == null || bytes.isEmpty) {
    throw Exception('التسجيل فارغ. أعد تسجيل الصوت.');
  }

  String mimeType;

  if (bytes.length >= 12 &&
      ascii.decode(bytes.sublist(4, 8), allowInvalid: true) == 'ftyp') {
    mimeType = 'audio/m4a';
  } else if (bytes.length >= 4 &&
      bytes[0] == 0x1A &&
      bytes[1] == 0x45 &&
      bytes[2] == 0xDF &&
      bytes[3] == 0xA3) {
    mimeType = 'audio/webm';
  } else if (bytes.length >= 12 &&
      ascii.decode(bytes.sublist(0, 4), allowInvalid: true) == 'RIFF' &&
      ascii.decode(bytes.sublist(8, 12), allowInvalid: true) == 'WAVE') {
    mimeType = 'audio/wav';
  } else {
    throw Exception('صيغة التسجيل غير معروفة.');
  }

  return {
    'audioBase64': base64Encode(bytes),
    'audioMimeType': mimeType,
  };
}
