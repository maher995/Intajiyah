import '/components/habit_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'habits_widget.dart' show HabitsWidget;
import 'package:flutter/material.dart';

class HabitsModel extends FlutterFlowModel<HabitsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HabitCard.
  late HabitCardModel habitCardModel1;
  // Model for HabitCard.
  late HabitCardModel habitCardModel2;
  // Model for HabitCard.
  late HabitCardModel habitCardModel3;
  // Model for HabitCard.
  late HabitCardModel habitCardModel4;

  @override
  void initState(BuildContext context) {
    habitCardModel1 = createModel(context, () => HabitCardModel());
    habitCardModel2 = createModel(context, () => HabitCardModel());
    habitCardModel3 = createModel(context, () => HabitCardModel());
    habitCardModel4 = createModel(context, () => HabitCardModel());
  }

  @override
  void dispose() {
    habitCardModel1.dispose();
    habitCardModel2.dispose();
    habitCardModel3.dispose();
    habitCardModel4.dispose();
  }
}
