import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'c_hangepassword_widget.dart' show CHangepasswordWidget;
import 'package:flutter/material.dart';

class CHangepasswordModel extends FlutterFlowModel<CHangepasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  late FocusNode textFieldPasswordVisibilityFocusNode1;
  FocusNode? textFieldFocusNode1;
  TextEditingController? passwordTextController;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for TextField widget.
  late FocusNode textFieldPasswordVisibilityFocusNode2;
  FocusNode? textFieldFocusNode2;
  TextEditingController? confirmPasswordTextController;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    textFieldPasswordVisibilityFocusNode1 = FocusNode();
    passwordVisibility1 = false;
    textFieldPasswordVisibilityFocusNode2 = FocusNode();
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    passwordTextController?.dispose();
    textFieldPasswordVisibilityFocusNode1.dispose();
    textFieldFocusNode2?.dispose();
    confirmPasswordTextController?.dispose();
    textFieldPasswordVisibilityFocusNode2.dispose();
  }
}
