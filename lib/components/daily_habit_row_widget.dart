import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'daily_habit_row_model.dart';
export 'daily_habit_row_model.dart';

/// DSL component DailyHabitRow
class DailyHabitRowWidget extends StatefulWidget {
  const DailyHabitRowWidget({
    super.key,
    this.habitRef,
    this.title,
    this.completed,
    bool? showRow,
  }) : this.showRow = showRow ?? true;

  final DocumentReference? habitRef;
  final String? title;
  final bool? completed;
  final bool showRow;

  @override
  State<DailyHabitRowWidget> createState() => _DailyHabitRowWidgetState();
}

class _DailyHabitRowWidgetState extends State<DailyHabitRowWidget> {
  late DailyHabitRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DailyHabitRowModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.showRow,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 3.0,
              color: Color(0x14000000),
              offset: Offset(
                0.0,
                1.0,
              ),
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
            crossAxisAlignment: (FFCrossAxisAlignment.center).flutterValue,
            textBaseline: TextBaseline.alphabetic,
            children: [
              FlutterFlowIconButton(
                borderColor: widget.completed!
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryText,
                borderRadius: 9999.0,
                borderWidth: 2.0,
                buttonSize: 40.0,
                fillColor: widget.completed!
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryBackground,
                icon: Icon(
                  Icons.check_rounded,
                  color: Colors.white,
                  size: 24.0,
                ),
                onPressed: () async {
                  _model.completionResult = await actions.toggleHabitCompletion(
                    widget.habitRef!.id,
                    currentUserUid,
                    getCurrentTimestamp,
                  );
                  if (_model.completionResult == 'milestone:3') {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('🔥 3-Day Streak!'),
                          content: Text('You reached a new habit milestone.'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Nice!'),
                            ),
                          ],
                        );
                      },
                    );
                  } else if (_model.completionResult == 'milestone:7') {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('🏆 7-Day Streak!'),
                          content: Text('You reached a new habit milestone.'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Nice!'),
                            ),
                          ],
                        );
                      },
                    );
                  } else if (_model.completionResult == 'milestone:14') {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('🏆 14-Day Streak!'),
                          content: Text('You reached a new habit milestone.'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Nice!'),
                            ),
                          ],
                        );
                      },
                    );
                  } else if (_model.completionResult == 'milestone:30') {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('🏆 30-Day Streak!'),
                          content: Text('You reached a new habit milestone.'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Nice!'),
                            ),
                          ],
                        );
                      },
                    );
                  } else if (_model.completionResult == 'not_scheduled') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'This habit isn\'t scheduled for today.',
                          style: TextStyle(),
                        ),
                        duration: Duration(milliseconds: 4000),
                      ),
                    );
                  } else if (_model.completionResult != '') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Couldn\'t update the habit. Please try again.',
                          style: TextStyle(),
                        ),
                        duration: Duration(milliseconds: 4000),
                      ),
                    );
                  }

                  safeSetState(() {});
                },
              ),
              Expanded(
                child: Text(
                  widget.title!,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
        ),
      ),
    );
  }
}
