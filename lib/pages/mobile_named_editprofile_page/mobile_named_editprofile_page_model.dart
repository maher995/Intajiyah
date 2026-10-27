import '/components/counter_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'mobile_named_editprofile_page_widget.dart'
    show MobileNamedEditprofilePageWidget;
import 'package:flutter/material.dart';

class MobileNamedEditprofilePageModel
    extends FlutterFlowModel<MobileNamedEditprofilePageWidget> {
  ///  Local state fields for this page.

  double? dailyFocusTime = 4.0;

  String peakEnergyTime = 'Morning';

  String? pomodoroLength = '';

  int? tasksPerDay = 5;

  String? newPhotoUrl = ' ';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataQro = false;
  FFUploadedFile uploadedLocalFile_uploadDataQro =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataQro = '';

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
