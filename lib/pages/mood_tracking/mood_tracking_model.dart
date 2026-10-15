import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'mood_tracking_widget.dart' show MoodTrackingWidget;
import 'package:flutter/material.dart';

class MoodTrackingModel extends FlutterFlowModel<MoodTrackingWidget> {
  ///  Local state fields for this page.

  String selectedMood = ' ';

  int? moodScore = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
