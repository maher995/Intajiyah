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

bool habitCompletedOnDay(
  List<DateTime> completedDates,
  int dayNumber,
) {
  if (dayNumber < 1 || dayNumber > 7) {
    return false;
  }

  final now = DateTime.now();

  final weekStart = DateTime(
    now.year,
    now.month,
    now.day,
  ).subtract(Duration(days: now.weekday - 1));

  final targetDate = weekStart.add(
    Duration(days: dayNumber - 1),
  );

  for (final logDate in completedDates) {
    final date = logDate.toLocal();

    if (date.year == targetDate.year &&
        date.month == targetDate.month &&
        date.day == targetDate.day) {
      return true;
    }
  }

  return false;
}
