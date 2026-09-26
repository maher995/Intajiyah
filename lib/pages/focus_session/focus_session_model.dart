import '/components/timer_display_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'focus_session_widget.dart' show FocusSessionWidget;
import 'package:flutter/material.dart';

class FocusSessionModel extends FlutterFlowModel<FocusSessionWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TimerDisplay.
  late TimerDisplayModel timerDisplayModel;

  @override
  void initState(BuildContext context) {
    timerDisplayModel = createModel(context, () => TimerDisplayModel());
  }

  @override
  void dispose() {
    timerDisplayModel.dispose();
  }
}
