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

Future createHabitWithStreak(
  String userId,
  String name,
  String frequency,
  List<String> selectedDays,
  DateTime createdAt,
) async {
  final firestore = FirebaseFirestore.instance;
  final habitRef = firestore.collection('habits').doc();
  final streakRef = firestore.collection('streaks').doc(habitRef.id);
  final batch = firestore.batch();
  batch.set(habitRef, {
    'user_id': userId,
    'name': name,
    'frequency': frequency,
    'selected_days': selectedDays,
    'created_at': createdAt,
    'completion_date': null,
  });
  batch.set(streakRef, {
    'user_id': userId,
    'habit_id': habitRef.id,
    'habit_ref': habitRef,
    'current_count': 0,
    'longest_count': 0,
    'last_updated': createdAt,
    'reward_level': 'None',
  });
  await batch.commit();
}
