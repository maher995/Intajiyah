import '/backend/api_requests/api_calls.dart';
import '/components/section_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tasks_widget.dart' show TasksWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class TasksModel extends FlutterFlowModel<TasksWidget> {
  ///  Local state fields for this page.

  bool isRecording = false;

  String voiceTaskTest = '\"\"';

  ///  State fields for stateful widgets in this page.

  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel3;
  String? recordedAudio;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  // Stores action output result for [Custom Action - prepareAudioForTranscription] action in Container widget.
  dynamic preparedaudio;
  // Stores action output result for [Backend Call - API (TranscribeAudio)] action in Container widget.
  ApiCallResponse? transscript;
  AudioRecorder? audioRecorder;

  @override
  void initState(BuildContext context) {
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    sectionHeaderModel3 = createModel(context, () => SectionHeaderModel());
  }

  @override
  void dispose() {
    sectionHeaderModel1.dispose();
    sectionHeaderModel2.dispose();
    sectionHeaderModel3.dispose();
  }
}
