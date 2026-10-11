import '/components/history_item2_widget.dart';
import '/components/task_card2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mobile_named_taskcompletiontracking_page_widget.dart'
    show MobileNamedTaskcompletiontrackingPageWidget;
import 'package:flutter/material.dart';

class MobileNamedTaskcompletiontrackingPageModel
    extends FlutterFlowModel<MobileNamedTaskcompletiontrackingPageWidget> {
  ///  Local state fields for this page.

  int? completedCount;

  ///  State fields for stateful widgets in this page.

  // Model for TaskCard.
  late TaskCard2Model taskCardModel1;
  // Model for TaskCard.
  late TaskCard2Model taskCardModel2;
  // Model for TaskCard.
  late TaskCard2Model taskCardModel3;
  // Model for HistoryItem.
  late HistoryItem2Model historyItemModel1;
  // Model for HistoryItem.
  late HistoryItem2Model historyItemModel2;
  // Model for HistoryItem.
  late HistoryItem2Model historyItemModel3;

  @override
  void initState(BuildContext context) {
    taskCardModel1 = createModel(context, () => TaskCard2Model());
    taskCardModel2 = createModel(context, () => TaskCard2Model());
    taskCardModel3 = createModel(context, () => TaskCard2Model());
    historyItemModel1 = createModel(context, () => HistoryItem2Model());
    historyItemModel2 = createModel(context, () => HistoryItem2Model());
    historyItemModel3 = createModel(context, () => HistoryItem2Model());
  }

  @override
  void dispose() {
    taskCardModel1.dispose();
    taskCardModel2.dispose();
    taskCardModel3.dispose();
    historyItemModel1.dispose();
    historyItemModel2.dispose();
    historyItemModel3.dispose();
  }
}
