import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'timer_settings_sheet_widget.dart' show TimerSettingsSheetWidget;
import 'package:flutter/material.dart';

class TimerSettingsSheetModel
    extends FlutterFlowModel<TimerSettingsSheetWidget> {
  ///  Local state fields for this component.

  int? work;

  int? rest;

  ///  State fields for stateful widgets in this component.

  // State field(s) for workChips widget.
  FormFieldController<List<String>>? workChipsValueController;
  String? get workChipsValue => workChipsValueController?.value?.firstOrNull;
  set workChipsValue(String? val) =>
      workChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for workField widget.
  FocusNode? workFieldFocusNode;
  TextEditingController? workFieldTextController;
  String? Function(BuildContext, String?)? workFieldTextControllerValidator;
  // State field(s) for restChips widget.
  FormFieldController<List<String>>? restChipsValueController;
  String? get restChipsValue => restChipsValueController?.value?.firstOrNull;
  set restChipsValue(String? val) =>
      restChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for restField widget.
  FocusNode? restFieldFocusNode;
  TextEditingController? restFieldTextController;
  String? Function(BuildContext, String?)? restFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    workFieldFocusNode?.dispose();
    workFieldTextController?.dispose();

    restFieldFocusNode?.dispose();
    restFieldTextController?.dispose();
  }
}
