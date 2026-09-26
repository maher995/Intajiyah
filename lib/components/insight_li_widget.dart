import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'insight_li_model.dart';
export 'insight_li_model.dart';

class InsightLiWidget extends StatefulWidget {
  const InsightLiWidget({
    super.key,
    Color? dotColor,
    String? content,
  })  : this.dotColor = dotColor ?? const Color(0x00000000),
        this.content =
            content ?? 'Consistent morning routine with 95% completion rate';

  final Color dotColor;
  final String content;

  @override
  State<InsightLiWidget> createState() => _InsightLiWidgetState();
}

class _InsightLiWidgetState extends State<InsightLiWidget> {
  late InsightLiModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsightLiModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '•',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: valueOrDefault<Color>(
                  widget.dotColor,
                  FlutterFlowTheme.of(context).success,
                ),
                fontSize: 18.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                lineHeight: 1.4,
              ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            valueOrDefault<String>(
              widget.content,
              'Consistent morning routine with 95% completion rate',
            ),
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                  fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ),
      ].divide(SizedBox(width: 8.0)),
    );
  }
}
