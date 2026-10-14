import '/components/counter_row_widget.dart';
import '/components/field_group_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'mobile_named_editprofile_page_widget.dart'
    show MobileNamedEditprofilePageWidget;
import 'package:flutter/material.dart';

class MobileNamedEditprofilePageModel
    extends FlutterFlowModel<MobileNamedEditprofilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FieldGroup.
  late FieldGroupModel fieldGroupModel1;
  // Model for FieldGroup.
  late FieldGroupModel fieldGroupModel2;
  // Model for FieldGroup.
  late FieldGroupModel fieldGroupModel3;
  // Model for CounterRow.
  late CounterRowModel counterRowModel1;
  // Model for CounterRow.
  late CounterRowModel counterRowModel2;

  @override
  void initState(BuildContext context) {
    fieldGroupModel1 = createModel(context, () => FieldGroupModel());
    fieldGroupModel2 = createModel(context, () => FieldGroupModel());
    fieldGroupModel3 = createModel(context, () => FieldGroupModel());
    counterRowModel1 = createModel(context, () => CounterRowModel());
    counterRowModel2 = createModel(context, () => CounterRowModel());
  }

  @override
  void dispose() {
    fieldGroupModel1.dispose();
    fieldGroupModel2.dispose();
    fieldGroupModel3.dispose();
    counterRowModel1.dispose();
    counterRowModel2.dispose();
  }
}
