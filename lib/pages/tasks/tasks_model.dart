import '/components/section_header_widget.dart';
import '/components/task_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tasks_widget.dart' show TasksWidget;
import 'package:flutter/material.dart';

class TasksModel extends FlutterFlowModel<TasksWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for SectionHeader.
  late FlutterFlowDynamicModels<SectionHeaderModel> sectionHeaderModels1;
  // Models for TaskCard.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels1;
  // Models for SectionHeader.
  late FlutterFlowDynamicModels<SectionHeaderModel> sectionHeaderModels2;
  // Models for TaskCard.
  late FlutterFlowDynamicModels<TaskCardModel> taskCardModels2;
  // Models for SectionHeader.
  late FlutterFlowDynamicModels<SectionHeaderModel> sectionHeaderModels3;

  @override
  void initState(BuildContext context) {
    sectionHeaderModels1 = FlutterFlowDynamicModels(() => SectionHeaderModel());
    taskCardModels1 = FlutterFlowDynamicModels(() => TaskCardModel());
    sectionHeaderModels2 = FlutterFlowDynamicModels(() => SectionHeaderModel());
    taskCardModels2 = FlutterFlowDynamicModels(() => TaskCardModel());
    sectionHeaderModels3 = FlutterFlowDynamicModels(() => SectionHeaderModel());
  }

  @override
  void dispose() {
    sectionHeaderModels1.dispose();
    taskCardModels1.dispose();
    sectionHeaderModels2.dispose();
    taskCardModels2.dispose();
    sectionHeaderModels3.dispose();
  }
}
