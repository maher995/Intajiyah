import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'task_item_model.dart';
export 'task_item_model.dart';

class TaskItemWidget extends StatefulWidget {
  const TaskItemWidget({
    super.key,
    bool? isUrgent,
    String? title,
    String? time,
    String? energy,
  })  : this.isUrgent = isUrgent ?? true,
        this.title = title ?? 'Deep Work: UI Design',
        this.time = time ?? '09:00 AM - 11:00 AM',
        this.energy = energy ?? '40';

  final bool isUrgent;
  final String title;
  final String time;
  final String energy;

  @override
  State<TaskItemWidget> createState() => _TaskItemWidgetState();
}

class _TaskItemWidgetState extends State<TaskItemWidget> {
  late TaskItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget.isUrgent,
              true,
            )
                ? Color(0x4DFF5963)
                : FlutterFlowTheme.of(context).alternate,
            Color(0x4DFF5963),
          ),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 48.0,
                height: 48.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    valueOrDefault<bool>(
                      widget.isUrgent,
                      true,
                    )
                        ? Color(0x1AFF5963)
                        : Color(0x1A4B39EF),
                    Color(0x1AFF5963),
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                  shape: BoxShape.rectangle,
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 24.0,
                  height: 24.0,
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    children: [
                      if (valueOrDefault<bool>(
                        valueOrDefault<bool>(
                          widget.isUrgent,
                          true,
                        )
                            ? true
                            : false,
                        true,
                      ))
                        Icon(
                          Icons.priority_high_rounded,
                          color: valueOrDefault<Color>(
                            valueOrDefault<bool>(
                              widget.isUrgent,
                              true,
                            )
                                ? FlutterFlowTheme.of(context).error
                                : FlutterFlowTheme.of(context).primary,
                            FlutterFlowTheme.of(context).error,
                          ),
                          size: 24.0,
                        ),
                      if (valueOrDefault<bool>(
                        valueOrDefault<bool>(
                          widget.isUrgent,
                          true,
                        )
                            ? false
                            : true,
                        false,
                      ))
                        Icon(
                          Icons.help,
                          color: valueOrDefault<Color>(
                            valueOrDefault<bool>(
                              widget.isUrgent,
                              true,
                            )
                                ? FlutterFlowTheme.of(context).error
                                : FlutterFlowTheme.of(context).primary,
                            FlutterFlowTheme.of(context).error,
                          ),
                          size: 24.0,
                        ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget.title,
                        'Deep Work: UI Design',
                      ),
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.schedule_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 14.0,
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.time,
                            '09:00 AM - 11:00 AM',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.energy,
                      '40',
                    ),
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                          ),
                          color: valueOrDefault<Color>(
                            valueOrDefault<bool>(
                              widget.isUrgent,
                              true,
                            )
                                ? FlutterFlowTheme.of(context).error
                                : FlutterFlowTheme.of(context).primary,
                            FlutterFlowTheme.of(context).error,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                          lineHeight: 1.4,
                        ),
                  ),
                  Text(
                    '⚡ energy',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelSmall.fontStyle,
                          lineHeight: 1.4,
                        ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ].divide(SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
