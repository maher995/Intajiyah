import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_task_sheet_widget.dart' show AddTaskSheetWidget;
import 'package:flutter/material.dart';

class AddTaskSheetModel extends FlutterFlowModel<AddTaskSheetWidget> {
  ///  Local state fields for this component.

  DateTime? dueDate;

  int? loadedVersion;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TitleField widget.
  FocusNode? titleFieldFocusNode;
  TextEditingController? titleFieldTextController;
  String? Function(BuildContext, String?)? titleFieldTextControllerValidator;
  // Stores action output result for [Cloud Function - categorizeTask] action in TitleField widget.
  CategorizeTaskCloudFunctionCallResponse? categorizeResult;
  // Stores action output result for [Cloud Function - categorizeTask] action in TitleField widget.
  CategorizeTaskCloudFunctionCallResponse? categorizeResultCopy;
  // State field(s) for Priority widget.
  String? priorityValue;
  FormFieldController<String>? priorityValueController;
  // State field(s) for EffortLevel widget.
  String? effortLevelValue;
  FormFieldController<String>? effortLevelValueController;
  // State field(s) for Category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  DateTime? datePicked;
  // Stores action output result for [Cloud Function - categorizeTask] action in SaveButton widget.
  CategorizeTaskCloudFunctionCallResponse? aiResult;
  // Stores action output result for [Backend Call - Create Document] action in SaveButton widget.
  TasksRecord? createdTask;
  // Stores action output result for [Custom Action - getLatestVersion] action in SaveEditButton widget.
  int? latestVersion;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFieldFocusNode?.dispose();
    titleFieldTextController?.dispose();
  }
}
