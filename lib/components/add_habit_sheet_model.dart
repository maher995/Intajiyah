import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_habit_sheet_widget.dart' show AddHabitSheetWidget;
import 'package:flutter/material.dart';

class AddHabitSheetModel extends FlutterFlowModel<AddHabitSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for HabitNameField widget.
  FocusNode? habitNameFieldFocusNode;
  TextEditingController? habitNameFieldTextController;
  String? Function(BuildContext, String?)?
      habitNameFieldTextControllerValidator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    habitNameFieldFocusNode?.dispose();
    habitNameFieldTextController?.dispose();
  }
}
