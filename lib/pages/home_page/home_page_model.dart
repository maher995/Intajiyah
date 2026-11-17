import '/components/daily_habit_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for DailyHabitRow.
  late FlutterFlowDynamicModels<DailyHabitRowModel> dailyHabitRowModels1;
  // Models for DailyHabitRow.
  late FlutterFlowDynamicModels<DailyHabitRowModel> dailyHabitRowModels2;

  @override
  void initState(BuildContext context) {
    dailyHabitRowModels1 = FlutterFlowDynamicModels(() => DailyHabitRowModel());
    dailyHabitRowModels2 = FlutterFlowDynamicModels(() => DailyHabitRowModel());
  }

  @override
  void dispose() {
    dailyHabitRowModels1.dispose();
    dailyHabitRowModels2.dispose();
  }
}
