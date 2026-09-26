import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'timer_display_model.dart';
export 'timer_display_model.dart';

class TimerDisplayWidget extends StatefulWidget {
  const TimerDisplayWidget({
    super.key,
    double? progress,
    String? time,
  })  : this.progress = progress ?? 0.0,
        this.time = time ?? '25:00';

  final double progress;
  final String time;

  @override
  State<TimerDisplayWidget> createState() => _TimerDisplayWidgetState();
}

class _TimerDisplayWidgetState extends State<TimerDisplayWidget> {
  late TimerDisplayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimerDisplayModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0,
      height: 280.0,
      child: Stack(
        alignment: AlignmentDirectional(0.0, 0.0),
        children: [
          CircularPercentIndicator(
            percent: 1.0,
            radius: 140.0,
            lineWidth: 8.0,
            animation: true,
            animateFromLastPercent: true,
            progressColor: FlutterFlowTheme.of(context).alternate,
            backgroundColor: FlutterFlowTheme.of(context).alternate,
          ),
          CircularPercentIndicator(
            percent: valueOrDefault<double>(
              widget.progress,
              0.0,
            ),
            radius: 140.0,
            lineWidth: 8.0,
            animation: true,
            animateFromLastPercent: true,
            progressColor: FlutterFlowTheme.of(context).primary,
            backgroundColor: FlutterFlowTheme.of(context).alternate,
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.time,
                    '25:00',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 64.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        lineHeight: 1.4,
                      ),
                ),
                Text(
                  'Focus Time',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).labelMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                        lineHeight: 1.4,
                      ),
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ),
        ],
      ),
    );
  }
}
