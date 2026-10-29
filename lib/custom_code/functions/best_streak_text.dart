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

String? bestStreakText(List<TasksRecord> tasks) {
  final list = tasks ?? [];
  final days = <DateTime>{};
  for (final t in list) {
    final c = t.completedAt;
    if (c != null) {
      days.add(DateTime.utc(c.year, c.month, c.day));
    }
  }
  if (days.isEmpty) return '0-Day Streak';
  final sorted = days.toList()..sort();
  int best = 1;
  int current = 1;
  for (int i = 1; i < sorted.length; i++) {
    if (sorted[i].difference(sorted[i - 1]).inDays == 1) {
      current++;
      if (current > best) best = current;
    } else {
      current = 1;
    }
  }
  return '$best-Day Streak';
}
