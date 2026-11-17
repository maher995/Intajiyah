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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> refreshStreaks(String userId) async {
  final firestore = FirebaseFirestore.instance;
  try {
    final streaks = await firestore
        .collection('streaks')
        .where('user_id', isEqualTo: userId)
        .get();

    final batch = firestore.batch();
    var hasUpdates = false;

    final nowValue = DateTime.now();
    final today = DateTime(nowValue.year, nowValue.month, nowValue.day);
    const dayNames = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

    for (final streakDoc in streaks.docs) {
      final data = streakDoc.data();
      final currentCount = (data['current_count'] as num?)?.toInt() ?? 0;
      final lastUpdatedValue = data['last_updated'];
      final habitRef = data['habit_ref'];

      if (currentCount <= 0 ||
          lastUpdatedValue is! Timestamp ||
          habitRef is! DocumentReference) {
        continue;
      }

      final habitSnapshot = await habitRef.get();
      if (!habitSnapshot.exists) continue;

      final habitData = habitSnapshot.data();
      if (habitData is! Map<String, dynamic>) continue;

      final selectedDays = List<String>.from(
        (habitData['selected_days'] as List?) ?? const [],
      );
      if (selectedDays.isEmpty) continue;

      final last = lastUpdatedValue.toDate();
      var day = DateTime(last.year, last.month, last.day)
          .add(const Duration(days: 1));

      var missed = false;
      var guard = 0;
      while (day.isBefore(today) && guard < 400) {
        if (selectedDays.contains(dayNames[day.weekday - 1])) {
          missed = true;
          break;
        }
        day = day.add(const Duration(days: 1));
        guard++;
      }

      if (missed) {
        batch.update(streakDoc.reference, {
          'current_count': 0,
          'reward_level': 'None',
        });
        hasUpdates = true;
      }
    }

    if (hasUpdates) {
      await batch.commit();
    }
  } catch (error) {
    print('[refreshStreaks] failed: $error');
  }
}
