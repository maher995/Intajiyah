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

List<double> habitCompletionRates(
  List<HabitsRecord> habits,
  List<HabitLogsRecord> logs,
) {
  final now = DateTime.now();

  final weekStart = DateTime(now.year, now.month, now.day)
      .subtract(Duration(days: now.weekday - 1));

  final dayNames = {
    'mon': 1,
    'monday': 1,
    'tue': 2,
    'tuesday': 2,
    'wed': 3,
    'wednesday': 3,
    'thu': 4,
    'thursday': 4,
    'fri': 5,
    'friday': 5,
    'sat': 6,
    'saturday': 6,
    'sun': 7,
    'sunday': 7,
  };

  String dateKey(DateTime date) {
    return '${date.year}-${date.month}-${date.day}';
  }

  final rates = <double>[];

  for (final habit in habits) {
    final selectedDays = habit.selectedDays
        .map((day) => dayNames[day.toString().trim().toLowerCase()])
        .whereType<int>()
        .toSet();

    final expectedDays = <String>{};
    final createdAt = habit.createdAt?.toLocal();

    for (int i = 0; i < 7; i++) {
      final date = weekStart.add(Duration(days: i));

      if (createdAt != null) {
        final createdDay = DateTime(
          createdAt.year,
          createdAt.month,
          createdAt.day,
        );

        if (date.isBefore(createdDay)) continue;
      }

      if (selectedDays.isEmpty || selectedDays.contains(date.weekday)) {
        expectedDays.add(dateKey(date));
      }
    }

    final completedDays = <String>{};

    for (final log in logs) {
      if (log.reference.parent.parent != habit.reference) {
        continue;
      }

      if (!log.completed || log.logDate == null) {
        continue;
      }

      final date = log.logDate!.toLocal();
      completedDays.add(dateKey(date));
    }
    for (int i = now.weekday - 1; i < 7; i++) {
      final date = weekStart.add(Duration(days: i));

      if (i > now.weekday - 1 || !completedDays.contains(dateKey(date))) {
        expectedDays.remove(dateKey(date));
      }
    }

    final completedCount = completedDays.intersection(expectedDays).length;

    final percentage = expectedDays.isEmpty
        ? 0.0
        : (completedCount / expectedDays.length) * 100.0;

    rates.add(percentage);
  }

  return rates;
}
