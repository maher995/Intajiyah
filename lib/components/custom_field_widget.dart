import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_field_model.dart';
export 'custom_field_model.dart';

class CustomFieldWidget extends StatefulWidget {
  const CustomFieldWidget({
    super.key,
    String? label,
    String? value,
    String? hint,
  })  : this.label = label ?? 'Name',
        this.value = value ?? 'Mohammed',
        this.hint = hint ?? '';

  final String label;
  final String value;
  final String hint;

  @override
  State<CustomFieldWidget> createState() => _CustomFieldWidgetState();
}

class _CustomFieldWidgetState extends State<CustomFieldWidget> {
  late CustomFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomFieldModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
          child: Container(
            child: Text(
              valueOrDefault<String>(
                widget.label,
                'Name',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: Color(0xFF8A8985),
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
          ),
        ),
        Container(
          height: 52.0,
          decoration: BoxDecoration(
            color: Color(0xFFF6F6FB),
            borderRadius: BorderRadius.circular(14.0),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Container(
              child: Container(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Container(
                  width: 0.0,
                  height: 0.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
