import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart' hide Type;
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/auth/firebase_auth/auth_util.dart';

int clampMinutes(
  String? text,
  int? min,
  int? max,
  int? fallback,
) {
  final digits = (text ?? '').replaceAll(RegExp(r'[^0-9]'), '');
  final v = int.tryParse(digits);
  final lo = min ?? 1;
  final hi = max ?? 120;
  if (v == null) return fallback ?? lo;
  if (v < lo) return lo;
  if (v > hi) return hi;
  return v;
}
