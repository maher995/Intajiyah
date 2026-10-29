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

String? buildStatsText(
  List<TasksRecord> thisDue,
  List<TasksRecord> lastDue,
  List<TasksRecord> thisMonth,
  List<TasksRecord> lastMonth,
  List<HabitsRecord> habits,
  List<JournalEntriesRecord>? journals,
  DateTime? month,
) {
  final tDue = thisDue ?? [];
  final lDue = lastDue ?? [];
  final done = thisMonth ?? [];
  final lastDone = lastMonth ?? [];
  final hab = habits ?? [];

  int scoreOf(List<TasksRecord> l) {
    if (l.isEmpty) return 0;
    final c = l.where((t) => t.completedAt != null).length;
    return (c / l.length * 100).round();
  }

  final days = <DateTime>{};
  final counts = List<int>.filled(24, 0);
  for (final t in done) {
    final c = t.completedAt;
    if (c != null) {
      days.add(DateTime.utc(c.year, c.month, c.day));
      counts[c.hour]++;
    }
  }

  final sorted = days.toList()..sort();
  int best = sorted.isEmpty ? 0 : 1;
  int run = 1;
  for (int i = 1; i < sorted.length; i++) {
    if (sorted[i].difference(sorted[i - 1]).inDays == 1) {
      run++;
      if (run > best) best = run;
    } else {
      run = 1;
    }
  }

  int bestStart = 0;
  int bestSum = -1;
  for (int h = 0; h < 24; h++) {
    int s = 0;
    for (int k = 0; k < 4; k++) {
      s += counts[(h + k) % 24];
    }
    if (s > bestSum) {
      bestSum = s;
      bestStart = h;
    }
  }
  final peak =
      bestSum <= 0 ? 'unknown' : '$bestStart:00 to ${(bestStart + 4) % 24}:00';

  final mo = month ?? DateTime.now();
  final jMonth = (journals ?? [])
      .where((j) =>
          j.entryDate != null &&
          j.entryDate!.year == mo.year &&
          j.entryDate!.month == mo.month)
      .toList();
  jMonth.sort((a, b) => b.entryDate!.compareTo(a.entryDate!));
  final notes = jMonth.take(5).map((j) {
    final q = (j.prompt ?? '')
        .replaceAll('"', "'")
        .replaceAll('\\', ' ')
        .replaceAll('\n', ' ');
    final a = (j.content ?? '')
        .replaceAll('"', "'")
        .replaceAll('\\', ' ')
        .replaceAll('\n', ' ');
    final answer = a.length > 200 ? a.substring(0, 200) : a;
    return q.isEmpty ? answer : '$q $answer';
  }).join(' | ');

  return 'Productivity score ${scoreOf(tDue)} out of 100 (last month ${scoreOf(lDue)}); '
      'tasks completed ${done.length} (last month ${lastDone.length}); '
      'best streak $best days; new habits ${hab.length}; '
      'most productive hours $peak; '
      'journal entries this month ${jMonth.length}; '
      'recent journal notes: ${notes.isEmpty ? 'none' : notes}';
}
