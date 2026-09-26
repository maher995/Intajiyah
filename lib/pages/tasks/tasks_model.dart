import '/components/section_header_widget.dart';
import '/components/task_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tasks_widget.dart' show TasksWidget;
import 'package:flutter/material.dart';

class TasksModel extends FlutterFlowModel<TasksWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel1;
  // Model for TaskCard.
  late TaskCardModel taskCardModel1;
  // Model for TaskCard.
  late TaskCardModel taskCardModel2;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel2;
  // Model for TaskCard.
  late TaskCardModel taskCardModel3;
  // Model for TaskCard.
  late TaskCardModel taskCardModel4;
  // Model for SectionHeader.
  late SectionHeaderModel sectionHeaderModel3;

  @override
  void initState(BuildContext context) {
    sectionHeaderModel1 = createModel(context, () => SectionHeaderModel());
    taskCardModel1 = createModel(context, () => TaskCardModel());
    taskCardModel2 = createModel(context, () => TaskCardModel());
    sectionHeaderModel2 = createModel(context, () => SectionHeaderModel());
    taskCardModel3 = createModel(context, () => TaskCardModel());
    taskCardModel4 = createModel(context, () => TaskCardModel());
    sectionHeaderModel3 = createModel(context, () => SectionHeaderModel());
  }

  @override
  void dispose() {
    sectionHeaderModel1.dispose();
    taskCardModel1.dispose();
    taskCardModel2.dispose();
    sectionHeaderModel2.dispose();
    taskCardModel3.dispose();
    taskCardModel4.dispose();
    sectionHeaderModel3.dispose();
  }
}
