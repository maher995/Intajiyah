// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class LocalPdfViewer extends StatefulWidget {
  const LocalPdfViewer({
    Key? key,
    this.width,
    this.height,
    required this.filePath,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String filePath;

  @override
  State<LocalPdfViewer> createState() => _LocalPdfViewerState();
}

class _LocalPdfViewerState extends State<LocalPdfViewer> {
  @override
  Widget build(BuildContext context) {
    final bool isUrl = widget.filePath.startsWith('http');

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: isUrl
          ? SfPdfViewer.network(widget.filePath)
          : SfPdfViewer.file(File(widget.filePath)),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the `</>` button on the right!
