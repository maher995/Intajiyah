import '/components/counter_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'mobile_named_editprofile_page_widget.dart'
    show MobileNamedEditprofilePageWidget;
import 'package:flutter/material.dart';

class MobileNamedEditprofilePageModel
    extends FlutterFlowModel<MobileNamedEditprofilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CounterRow.
  late CounterRowModel counterRowModel1;
  // Model for CounterRow.
  late CounterRowModel counterRowModel2;

  @override
  void initState(BuildContext context) {
    counterRowModel1 = createModel(context, () => CounterRowModel());
    counterRowModel2 = createModel(context, () => CounterRowModel());
  }

  @override
  void dispose() {
    counterRowModel1.dispose();
    counterRowModel2.dispose();
  }
}
