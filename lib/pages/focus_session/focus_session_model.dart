import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'focus_session_widget.dart' show FocusSessionWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class FocusSessionModel extends FlutterFlowModel<FocusSessionWidget> {
  ///  Local state fields for this page.

  bool isRunning = false;

  bool isBreak = false;

  bool switching = false;

  int? secondsLeft = 1500;

  ///  State fields for stateful widgets in this page.

  InstantTimer? focusTick;
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    focusTick?.cancel();
  }
}
