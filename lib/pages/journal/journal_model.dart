import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/components/mood_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'journal_widget.dart' show JournalWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class JournalModel extends FlutterFlowModel<JournalWidget> {
  ///  Local state fields for this page.

  String? selectedMood;

  bool isRecording = false;

  String? voiceTaskTest;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  String? recordedAudio;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  // Stores action output result for [Custom Action - prepareAudioForTranscription] action in Container widget.
  dynamic preparedaudio;
  // Stores action output result for [Cloud Function - transcribeAudio] action in Container widget.
  TranscribeAudioCloudFunctionCallResponse? transcriptResult;
  AudioRecorder? audioRecorder;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Model for MoodButton.
  late MoodButtonModel moodButtonModel1;
  // Model for MoodButton.
  late MoodButtonModel moodButtonModel2;
  // Model for MoodButton.
  late MoodButtonModel moodButtonModel3;
  // Model for MoodButton.
  late MoodButtonModel moodButtonModel4;
  // Model for MoodButton.
  late MoodButtonModel moodButtonModel5;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? completedTodayCount;

  @override
  void initState(BuildContext context) {
    moodButtonModel1 = createModel(context, () => MoodButtonModel());
    moodButtonModel2 = createModel(context, () => MoodButtonModel());
    moodButtonModel3 = createModel(context, () => MoodButtonModel());
    moodButtonModel4 = createModel(context, () => MoodButtonModel());
    moodButtonModel5 = createModel(context, () => MoodButtonModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    moodButtonModel1.dispose();
    moodButtonModel2.dispose();
    moodButtonModel3.dispose();
    moodButtonModel4.dispose();
    moodButtonModel5.dispose();
  }
}
