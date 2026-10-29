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

String? tasksDiffText(
  List<TasksRecord> thisMonth,
  List<TasksRecord> lastMonth,
) {
  final a = (thisMonth ?? []).length;
  final b = (lastMonth ?? []).length;
  final diff = a - b;
  if (diff > 0) return '+$diff more than last month';
  if (diff < 0) return '${diff.abs()} fewer than last month';
  return 'Same as last month';
}
