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

String energyWeeklyTrend(
  List<double> currentWeek,
  List<double> previousWeek,
) {
  if (currentWeek.isEmpty) {
    return 'No energy data this week';
  }

  if (previousWeek.isEmpty) {
    return 'No data last week';
  }

  final currentAvg = currentWeek.reduce((a, b) => a + b) / currentWeek.length;

  final previousAvg =
      previousWeek.reduce((a, b) => a + b) / previousWeek.length;

  if (previousAvg == 0) {
    return 'No comparison available';
  }

  final change = ((currentAvg - previousAvg) / previousAvg * 100).round();

  if (change > 0) {
    return '+$change% vs last week';
  } else if (change < 0) {
    return '$change% vs last week';
  } else {
    return 'No change vs last week';
  }
}
