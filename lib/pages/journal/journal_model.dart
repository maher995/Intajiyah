import '/components/history_item_widget.dart';
import '/components/mood_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'journal_widget.dart' show JournalWidget;
import 'package:flutter/material.dart';

class JournalModel extends FlutterFlowModel<JournalWidget> {
  ///  State fields for stateful widgets in this page.

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
  // Model for HistoryItem.
  late HistoryItemModel historyItemModel1;
  // Model for HistoryItem.
  late HistoryItemModel historyItemModel2;

  @override
  void initState(BuildContext context) {
    moodButtonModel1 = createModel(context, () => MoodButtonModel());
    moodButtonModel2 = createModel(context, () => MoodButtonModel());
    moodButtonModel3 = createModel(context, () => MoodButtonModel());
    moodButtonModel4 = createModel(context, () => MoodButtonModel());
    moodButtonModel5 = createModel(context, () => MoodButtonModel());
    historyItemModel1 = createModel(context, () => HistoryItemModel());
    historyItemModel2 = createModel(context, () => HistoryItemModel());
  }

  @override
  void dispose() {
    moodButtonModel1.dispose();
    moodButtonModel2.dispose();
    moodButtonModel3.dispose();
    moodButtonModel4.dispose();
    moodButtonModel5.dispose();
    historyItemModel1.dispose();
    historyItemModel2.dispose();
  }
}
