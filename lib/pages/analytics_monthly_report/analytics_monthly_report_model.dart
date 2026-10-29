import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/achievement_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'analytics_monthly_report_widget.dart' show AnalyticsMonthlyReportWidget;
import 'package:flutter/material.dart';

class AnalyticsMonthlyReportModel
    extends FlutterFlowModel<AnalyticsMonthlyReportWidget> {
  ///  Local state fields for this page.

  DateTime? selectedMonth;

  List<TasksRecord> thisMonthTasks = [];
  void addToThisMonthTasks(TasksRecord item) => thisMonthTasks.add(item);
  void removeFromThisMonthTasks(TasksRecord item) =>
      thisMonthTasks.remove(item);
  void removeAtIndexFromThisMonthTasks(int index) =>
      thisMonthTasks.removeAt(index);
  void insertAtIndexInThisMonthTasks(int index, TasksRecord item) =>
      thisMonthTasks.insert(index, item);
  void updateThisMonthTasksAtIndex(int index, Function(TasksRecord) updateFn) =>
      thisMonthTasks[index] = updateFn(thisMonthTasks[index]);

  List<TasksRecord> lastMonthTasks = [];
  void addToLastMonthTasks(TasksRecord item) => lastMonthTasks.add(item);
  void removeFromLastMonthTasks(TasksRecord item) =>
      lastMonthTasks.remove(item);
  void removeAtIndexFromLastMonthTasks(int index) =>
      lastMonthTasks.removeAt(index);
  void insertAtIndexInLastMonthTasks(int index, TasksRecord item) =>
      lastMonthTasks.insert(index, item);
  void updateLastMonthTasksAtIndex(int index, Function(TasksRecord) updateFn) =>
      lastMonthTasks[index] = updateFn(lastMonthTasks[index]);

  dynamic insights;

  bool isLoading = true;

  List<TasksRecord> dueThisMonthTasks = [];
  void addToDueThisMonthTasks(TasksRecord item) => dueThisMonthTasks.add(item);
  void removeFromDueThisMonthTasks(TasksRecord item) =>
      dueThisMonthTasks.remove(item);
  void removeAtIndexFromDueThisMonthTasks(int index) =>
      dueThisMonthTasks.removeAt(index);
  void insertAtIndexInDueThisMonthTasks(int index, TasksRecord item) =>
      dueThisMonthTasks.insert(index, item);
  void updateDueThisMonthTasksAtIndex(
          int index, Function(TasksRecord) updateFn) =>
      dueThisMonthTasks[index] = updateFn(dueThisMonthTasks[index]);

  List<TasksRecord> dueLastMonthTasks = [];
  void addToDueLastMonthTasks(TasksRecord item) => dueLastMonthTasks.add(item);
  void removeFromDueLastMonthTasks(TasksRecord item) =>
      dueLastMonthTasks.remove(item);
  void removeAtIndexFromDueLastMonthTasks(int index) =>
      dueLastMonthTasks.removeAt(index);
  void insertAtIndexInDueLastMonthTasks(int index, TasksRecord item) =>
      dueLastMonthTasks.insert(index, item);
  void updateDueLastMonthTasksAtIndex(
          int index, Function(TasksRecord) updateFn) =>
      dueLastMonthTasks[index] = updateFn(dueLastMonthTasks[index]);

  List<HabitsRecord> thisMonthHabits = [];
  void addToThisMonthHabits(HabitsRecord item) => thisMonthHabits.add(item);
  void removeFromThisMonthHabits(HabitsRecord item) =>
      thisMonthHabits.remove(item);
  void removeAtIndexFromThisMonthHabits(int index) =>
      thisMonthHabits.removeAt(index);
  void insertAtIndexInThisMonthHabits(int index, HabitsRecord item) =>
      thisMonthHabits.insert(index, item);
  void updateThisMonthHabitsAtIndex(
          int index, Function(HabitsRecord) updateFn) =>
      thisMonthHabits[index] = updateFn(thisMonthHabits[index]);

  List<JournalEntriesRecord> thisMonthJournals = [];
  void addToThisMonthJournals(JournalEntriesRecord item) =>
      thisMonthJournals.add(item);
  void removeFromThisMonthJournals(JournalEntriesRecord item) =>
      thisMonthJournals.remove(item);
  void removeAtIndexFromThisMonthJournals(int index) =>
      thisMonthJournals.removeAt(index);
  void insertAtIndexInThisMonthJournals(int index, JournalEntriesRecord item) =>
      thisMonthJournals.insert(index, item);
  void updateThisMonthJournalsAtIndex(
          int index, Function(JournalEntriesRecord) updateFn) =>
      thisMonthJournals[index] = updateFn(thisMonthJournals[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in AnalyticsMonthlyReport widget.
  List<TasksRecord>? thisMonthResult;
  // Stores action output result for [Firestore Query - Query a collection] action in AnalyticsMonthlyReport widget.
  List<TasksRecord>? lastMonthResult;
  // Stores action output result for [Firestore Query - Query a collection] action in AnalyticsMonthlyReport widget.
  List<TasksRecord>? dueThisMonthResult;
  // Stores action output result for [Firestore Query - Query a collection] action in AnalyticsMonthlyReport widget.
  List<TasksRecord>? dueLastMonthResult;
  // Stores action output result for [Firestore Query - Query a collection] action in AnalyticsMonthlyReport widget.
  List<HabitsRecord>? thisMonthHabitsResult;
  // Stores action output result for [Firestore Query - Query a collection] action in AnalyticsMonthlyReport widget.
  List<JournalEntriesRecord>? thisMonthJournalsResult;
  // Stores action output result for [Backend Call - API (generateInsights)] action in AnalyticsMonthlyReport widget.
  ApiCallResponse? insightsResponse;
  // Model for AchievementItem.
  late AchievementItemModel achievementItemModel1;
  // Model for AchievementItem.
  late AchievementItemModel achievementItemModel2;
  // Model for AchievementItem.
  late AchievementItemModel achievementItemModel3;

  @override
  void initState(BuildContext context) {
    achievementItemModel1 = createModel(context, () => AchievementItemModel());
    achievementItemModel2 = createModel(context, () => AchievementItemModel());
    achievementItemModel3 = createModel(context, () => AchievementItemModel());
  }

  @override
  void dispose() {
    achievementItemModel1.dispose();
    achievementItemModel2.dispose();
    achievementItemModel3.dispose();
  }
}
