import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_task_sheet_widget.dart' show AddTaskSheetWidget;
import 'package:flutter/material.dart';

class AddTaskSheetModel extends FlutterFlowModel<AddTaskSheetWidget> {
  ///  Local state fields for this component.

  DateTime? dueDate;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TitleField widget.
  FocusNode? titleFieldFocusNode;
  TextEditingController? titleFieldTextController;
  String? Function(BuildContext, String?)? titleFieldTextControllerValidator;
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFieldFocusNode?.dispose();
    titleFieldTextController?.dispose();
  }
}
