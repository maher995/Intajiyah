import '/flutter_flow/flutter_flow_util.dart';
import 'habit_card_widget.dart' show HabitCardWidget;
import 'package:flutter/material.dart';

class HabitCardModel extends FlutterFlowModel<HabitCardWidget> {
  ///  Local state fields for this component.

  bool? completedLocally = false;

  bool? completionOverrideSet = false;

  bool? completionUpdating = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - toggleHabitCompletion] action in IconButton widget.
  String? completionResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
