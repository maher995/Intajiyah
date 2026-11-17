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

Future<String> toggleHabitCompletion(
  String habitId,
  String userId,
  DateTime completedAt,
) async {
  final now = DateTime.now();
  final logDate = DateTime(now.year, now.month, now.day);
  final dayKey =
      '${logDate.year.toString().padLeft(4, '0')}-${logDate.month.toString().padLeft(2, '0')}-${logDate.day.toString().padLeft(2, '0')}';
  final firestore = FirebaseFirestore.instance;
  final habitRef = firestore.collection('habits').doc(habitId);
  final logRef = habitRef.collection('habit_logs').doc(dayKey);
  final streakRef = firestore.collection('streaks').doc(habitId);
  int? unlockedMilestone;
  var notScheduled = false;
  try {
    await firestore.runTransaction((transaction) async {
      final habitSnapshot = await transaction.get(habitRef);
      final logSnapshot = await transaction.get(logRef);
      final streakSnapshot = await transaction.get(streakRef);
      final habitData = habitSnapshot.data() ?? <String, dynamic>{};
      final selectedDays = List<String>.from(
        (habitData['selected_days'] as List?) ?? const [],
      );
      final alreadyCompleted =
          logSnapshot.exists && logSnapshot.data()?['completed'] == true;
      final todayWeekday = const [
        'Mon',
        'Tue',
        'Wed',
        'Thu',
        'Fri',
        'Sat',
        'Sun'
      ][logDate.weekday - 1];
      if (!alreadyCompleted && !selectedDays.contains(todayWeekday)) {
        notScheduled = true;
        return;
      }
      final existingMilestones = <int>{};
      if (!alreadyCompleted) {
        for (final milestone in [3, 7, 14, 30]) {
          final achievementSnapshot = await transaction.get(
            firestore
                .collection('achievements')
                .doc('${userId}_${habitId}_$milestone'),
          );
          if (achievementSnapshot.exists) existingMilestones.add(milestone);
        }
      }
      final streakData = streakSnapshot.data() ?? <String, dynamic>{};
      var currentCount = (streakData['current_count'] as num?)?.toInt() ?? 0;
      final longestCount = (streakData['longest_count'] as num?)?.toInt() ?? 0;
      var lastUpdated = streakData['last_updated'] is Timestamp
          ? (streakData['last_updated'] as Timestamp).toDate()
          : null;

      if (alreadyCompleted) {
        currentCount = currentCount > 0 ? currentCount - 1 : 0;
        DateTime? previousCompletedDate;
        final createdValue = habitData['created_at'];
        final createdDate = createdValue is Timestamp
            ? createdValue.toDate()
            : createdValue is DateTime
                ? createdValue
                : null;
        var checkDate = logDate.subtract(const Duration(days: 1));
        while (createdDate != null && !checkDate.isBefore(createdDate)) {
          final checkKey =
              '${checkDate.year.toString().padLeft(4, '0')}-${checkDate.month.toString().padLeft(2, '0')}-${checkDate.day.toString().padLeft(2, '0')}';
          final previousLog = await transaction.get(
            habitRef.collection('habit_logs').doc(checkKey),
          );
          if (previousLog.exists && previousLog.data()?['completed'] == true) {
            final value = previousLog.data()?['log_date'];
            previousCompletedDate = value is Timestamp
                ? value.toDate()
                : value is DateTime
                    ? value
                    : checkDate;
            break;
          }
          checkDate = checkDate.subtract(const Duration(days: 1));
        }
        lastUpdated = previousCompletedDate ?? createdDate;
        transaction.set(logRef, {
          'completed': false,
          'user_id': userId,
          'log_date': logDate,
        });
        transaction.update(habitRef, {
          'completion_date': FieldValue.delete(),
        });
      } else {
        if (lastUpdated != null) {
          final previousDay = DateTime(
            lastUpdated.year,
            lastUpdated.month,
            lastUpdated.day,
          );
          final dayDifference = logDate.difference(previousDay).inDays;
          if (dayDifference > 1) {
            var missedScheduledDay = false;
            for (var offset = 1; offset < dayDifference; offset++) {
              final checkDay = previousDay.add(Duration(days: offset));
              final weekday = const [
                'Mon',
                'Tue',
                'Wed',
                'Thu',
                'Fri',
                'Sat',
                'Sun'
              ][checkDay.weekday - 1];
              if (selectedDays.contains(weekday)) {
                final checkKey =
                    '${checkDay.year.toString().padLeft(4, '0')}-${checkDay.month.toString().padLeft(2, '0')}-${checkDay.day.toString().padLeft(2, '0')}';
                final previousLog = await transaction.get(
                  habitRef.collection('habit_logs').doc(checkKey),
                );
                if (!previousLog.exists ||
                    previousLog.data()?['completed'] != true) {
                  missedScheduledDay = true;
                  break;
                }
              }
            }
            if (missedScheduledDay) currentCount = 0;
          }
        }
        currentCount += 1;
        lastUpdated = logDate;
        transaction.set(logRef, {
          'completed': true,
          'user_id': userId,
          'log_date': logDate,
        });
        transaction.update(habitRef, {'completion_date': logDate});
      }

      final rewardLevel = currentCount >= 30
          ? 'Master'
          : currentCount >= 14
              ? 'Gold'
              : currentCount >= 7
                  ? 'Silver'
                  : currentCount >= 3
                      ? 'Bronze'
                      : 'None';
      if (!alreadyCompleted) {
        final milestone = [30, 14, 7, 3].firstWhere(
          (value) => currentCount == value,
          orElse: () => 0,
        );
        if (milestone > 0) {
          final alreadyUnlocked = existingMilestones.contains(milestone);
          if (!alreadyUnlocked) {
            final achievementId = '${userId}_${habitId}_$milestone';
            transaction
                .set(firestore.collection('achievements').doc(achievementId), {
              'user_id': userId,
              'habit_ref': habitRef,
              'milestone': milestone,
              'unlocked_at': logDate,
            });
            unlockedMilestone = milestone;
          }
        }
      }
      transaction.set(streakRef, {
        'user_id': userId,
        'habit_id': habitId,
        'habit_ref': habitRef,
        'current_count': currentCount,
        'longest_count':
            currentCount > longestCount ? currentCount : longestCount,
        'last_updated': lastUpdated,
        'reward_level': rewardLevel,
      });
    });
    if (notScheduled) return 'not_scheduled';
    print('[toggleHabitCompletion] toggle committed ${logRef.path}');
    return unlockedMilestone == null ? '' : 'milestone:$unlockedMilestone';
  } catch (error, stackTrace) {
    print('[toggleHabitCompletion] write failed ${logRef.path}: $error');
    print('[toggleHabitCompletion] failure stack: $stackTrace');
    return error.toString();
  }
}
