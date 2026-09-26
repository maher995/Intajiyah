import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mood_button_model.dart';
export 'mood_button_model.dart';

class MoodButtonWidget extends StatefulWidget {
  const MoodButtonWidget({
    super.key,
    bool? active,
    String? emoji,
  })  : this.active = active ?? true,
        this.emoji = emoji ?? '😊';

  final bool active;
  final String emoji;

  @override
  State<MoodButtonWidget> createState() => _MoodButtonWidgetState();
}

class _MoodButtonWidgetState extends State<MoodButtonWidget> {
  late MoodButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoodButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54.0,
      height: 54.0,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          valueOrDefault<bool>(
            widget.active,
            true,
          )
              ? Color(0x1A4B39EF)
              : FlutterFlowTheme.of(context).secondaryBackground,
          Color(0x1A4B39EF),
        ),
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget.active,
              true,
            )
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
            FlutterFlowTheme.of(context).primary,
          ),
          width: 2.0,
        ),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        valueOrDefault<String>(
          widget.emoji,
          '😊',
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              font: GoogleFonts.inter(
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
              fontSize: 24.0,
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              lineHeight: 1.4,
            ),
      ),
    );
  }
}
