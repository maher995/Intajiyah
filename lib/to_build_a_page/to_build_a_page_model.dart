import '/components/progress_metric_widget.dart';
import '/components/task_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'to_build_a_page_widget.dart' show ToBuildAPageWidget;
import 'package:flutter/material.dart';

class ToBuildAPageModel extends FlutterFlowModel<ToBuildAPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProgressMetric.
  late ProgressMetricModel progressMetricModel1;
  // Model for ProgressMetric.
  late ProgressMetricModel progressMetricModel2;
  // Model for TaskItem.
  late TaskItemModel taskItemModel1;
  // Model for TaskItem.
  late TaskItemModel taskItemModel2;
  // Model for TaskItem.
  late TaskItemModel taskItemModel3;
  // Model for TaskItem.
  late TaskItemModel taskItemModel4;

  @override
  void initState(BuildContext context) {
    progressMetricModel1 = createModel(context, () => ProgressMetricModel());
    progressMetricModel2 = createModel(context, () => ProgressMetricModel());
    taskItemModel1 = createModel(context, () => TaskItemModel());
    taskItemModel2 = createModel(context, () => TaskItemModel());
    taskItemModel3 = createModel(context, () => TaskItemModel());
    taskItemModel4 = createModel(context, () => TaskItemModel());
  }

  @override
  void dispose() {
    progressMetricModel1.dispose();
    progressMetricModel2.dispose();
    taskItemModel1.dispose();
    taskItemModel2.dispose();
    taskItemModel3.dispose();
    taskItemModel4.dispose();
  }
}
