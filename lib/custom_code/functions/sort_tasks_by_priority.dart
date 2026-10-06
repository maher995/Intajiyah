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
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/auth/firebase_auth/auth_util.dart';

List<TasksRecord> sortTasksByPriority(
  List<TasksRecord> tasks,
  int maxItems,
) {
  int rank(TasksRecord t) {
    switch (t.priority?.name) {
      case 'highFocus':
        return 0;
      case 'mediumEffort':
        return 1;
      case 'lowEffort':
        return 2;
      default:
        return 3;
    }
  }

  final int limit = maxItems;
  final sorted = List<TasksRecord>.from(tasks);
  sorted.sort((a, b) => rank(a).compareTo(rank(b)));
  return sorted.take(limit).toList();
}
