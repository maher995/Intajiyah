import '/components/habit_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'habits_widget.dart' show HabitsWidget;
import 'package:flutter/material.dart';

class HabitsModel extends FlutterFlowModel<HabitsWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for HabitCard.
  late FlutterFlowDynamicModels<HabitCardModel> habitCardModels;

  @override
  void initState(BuildContext context) {
    habitCardModels = FlutterFlowDynamicModels(() => HabitCardModel());
  }

  @override
  void dispose() {
    habitCardModels.dispose();
  }
}
