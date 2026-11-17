import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/edit_habit_sheet_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'habit_card_model.dart';
export 'habit_card_model.dart';

class HabitCardWidget extends StatefulWidget {
  const HabitCardWidget({
    super.key,
    bool? completed,
    String? emoji,
    String? title,
    String? streak,
    String? schedule,
    required this.habitRef,
    bool? completionToday,
    this.selectedDays,
  })  : this.completed = completed ?? true,
        this.emoji = emoji ?? '',
        this.title = title ?? 'Morning Exercise',
        this.streak = streak ?? '7 day streak',
        this.schedule = schedule ??
            'daily ÃÂÃÂÃÂÃÂ¢ÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂ¢ Mon, Tue, Wed, Thu, Fri, Sat, Sun',
        this.completionToday = completionToday ?? false;

  final bool completed;
  final String emoji;
  final String title;
  final String streak;
  final String schedule;
  final DocumentReference? habitRef;
  final bool completionToday;
  final List<String>? selectedDays;

  @override
  State<HabitCardWidget> createState() => _HabitCardWidgetState();
}

class _HabitCardWidgetState extends State<HabitCardWidget> {
  late HabitCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HabitCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<HabitLogsRecord>>(
      stream: queryHabitLogsRecord(
        parent: widget.habitRef,
        queryBuilder: (habitLogsRecord) => habitLogsRecord
            .where(
              'user_id',
              isEqualTo: currentUserUid,
            )
            .where(
              'log_date',
              isEqualTo: functions.startOfToday(),
            ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<HabitLogsRecord> habitCardHabitLogsRecordList = snapshot.data!;
        final habitCardHabitLogsRecord = habitCardHabitLogsRecordList.isNotEmpty
            ? habitCardHabitLogsRecordList.first
            : null;

        return Opacity(
          opacity: !widget.selectedDays!
                  .contains(dateTimeFormat("EEE", getCurrentTimestamp))
              ? 0.62
              : (widget.completionToday ? 0.82 : 1.0),
          child: Builder(
            builder: (context) => InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onLongPress: () async {
                await showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return Dialog(
                      elevation: 0,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.transparent,
                      alignment: AlignmentDirectional(0.0, 0.0)
                          .resolve(Directionality.of(context)),
                      child: EditHabitSheetWidget(
                        habitRef: widget.habitRef!,
                      ),
                    );
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(24.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FlutterFlowIconButton(
                              borderColor:
                                  habitCardHabitLogsRecord?.completed == true
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                              borderRadius: 9999.0,
                              borderWidth: 2.0,
                              buttonSize: 36.0,
                              fillColor:
                                  habitCardHabitLogsRecord?.completed == true
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                              icon: Icon(
                                Icons.check_rounded,
                                color: Colors.white,
                                size: 16.0,
                              ),
                              onPressed: !widget.selectedDays!.contains(
                                      dateTimeFormat(
                                          "EEE", getCurrentTimestamp))
                                  ? null
                                  : () async {
                                      if (!_model.completionUpdating!) {
                                        _model.completionUpdating = true;
                                        safeSetState(() {});
                                        _model.completionResult =
                                            await actions.toggleHabitCompletion(
                                          widget.habitRef!.id,
                                          currentUserUid,
                                          getCurrentTimestamp,
                                        );
                                        _model.completionOverrideSet = false;
                                        safeSetState(() {});
                                        _model.completedLocally = false;
                                        safeSetState(() {});
                                        _model.completionUpdating = false;
                                        safeSetState(() {});
                                        if (_model.completionResult ==
                                            'milestone:3') {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('🔥 3-Day Streak!'),
                                                content: Text(
                                                    'You reached a new habit milestone.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Nice!'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        } else if (_model.completionResult ==
                                            'milestone:7') {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('🏆 7-Day Streak!'),
                                                content: Text(
                                                    'You reached a new habit milestone.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Nice!'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        } else if (_model.completionResult ==
                                            'milestone:14') {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title:
                                                    Text('🏆 14-Day Streak!'),
                                                content: Text(
                                                    'You reached a new habit milestone.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Nice!'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        } else if (_model.completionResult ==
                                            'milestone:30') {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title:
                                                    Text('🏆 30-Day Streak!'),
                                                content: Text(
                                                    'You reached a new habit milestone.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Nice!'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        } else if (_model.completionResult ==
                                            'not_scheduled') {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'This habit isn\'t scheduled for today.',
                                                style: TextStyle(),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                            ),
                                          );
                                        } else if (_model.completionResult !=
                                            '') {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Couldn\'t update the habit. Please try again.',
                                                style: TextStyle(),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                            ),
                                          );
                                        }
                                      }

                                      safeSetState(() {});
                                    },
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          widget.emoji,
                                          '💪',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          widget.title,
                                          'Morning Exercise',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: GoogleFonts.interTight(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                              color: !widget.selectedDays!
                                                          .contains(dateTimeFormat(
                                                              "EEE",
                                                              getCurrentTimestamp)) ||
                                                      widget.completionToday
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondaryText
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      if (!widget.selectedDays!.contains(
                                          dateTimeFormat(
                                              "EEE", getCurrentTimestamp)))
                                        Text(
                                          'Available on ${widget.selectedDays?.firstOrNull}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .fontStyle,
                                              ),
                                        ),
                                      StreamBuilder<List<StreaksRecord>>(
                                        stream: queryStreaksRecord(
                                          queryBuilder: (streaksRecord) =>
                                              streaksRecord
                                                  .where(
                                                    'user_id',
                                                    isEqualTo: currentUserUid,
                                                  )
                                                  .where(
                                                    'habit_ref',
                                                    isEqualTo: widget.habitRef,
                                                  ),
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<StreaksRecord>
                                              containerStreaksRecordList =
                                              snapshot.data!;
                                          final containerStreaksRecord =
                                              containerStreaksRecordList
                                                      .isNotEmpty
                                                  ? containerStreaksRecordList
                                                      .first
                                                  : null;

                                          return Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '🔥',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<int>(
                                                            containerStreaksRecord
                                                                ?.currentCount,
                                                            0,
                                                          ) ==
                                                          0
                                                      ? 'Start your streak today'
                                                      : '${containerStreaksRecord?.currentCount.toString()} ${containerStreaksRecord?.currentCount == 1 ? 'Day' : 'Days'} Streak',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 4.0)),
                                            ),
                                          );
                                        },
                                      ),
                                      StreamBuilder<List<StreaksRecord>>(
                                        stream: queryStreaksRecord(
                                          queryBuilder: (streaksRecord) =>
                                              streaksRecord
                                                  .where(
                                                    'user_id',
                                                    isEqualTo: currentUserUid,
                                                  )
                                                  .where(
                                                    'habit_ref',
                                                    isEqualTo: widget.habitRef,
                                                  ),
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<StreaksRecord>
                                              containerStreaksRecordList =
                                              snapshot.data!;
                                          final containerStreaksRecord =
                                              containerStreaksRecordList
                                                      .isNotEmpty
                                                  ? containerStreaksRecordList
                                                      .first
                                                  : null;

                                          return Container(
                                            child: Wrap(
                                              spacing: 4.0,
                                              runSpacing: 4.0,
                                              alignment: WrapAlignment.start,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: [
                                                if (widget.selectedDays
                                                        ?.contains('Sun') ??
                                                    true)
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: (((List<String>
                                                                      a0) {
                                                                    return a0
                                                                        .indexOf(
                                                                            'Sun');
                                                                  }(widget
                                                                      .selectedDays!
                                                                      .toList())) <
                                                                  valueOrDefault<
                                                                      int>(
                                                                    containerStreaksRecord
                                                                        ?.currentCount,
                                                                    0,
                                                                  )) ||
                                                              ((dateTimeFormat(
                                                                          "E",
                                                                          getCurrentTimestamp) ==
                                                                      'Sun') &&
                                                                  widget
                                                                      .completionToday)
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color: (((List<String>
                                                                        a0) {
                                                                      return a0
                                                                          .indexOf(
                                                                              'Sun');
                                                                    }(widget
                                                                        .selectedDays!
                                                                        .toList())) <
                                                                    valueOrDefault<
                                                                        int>(
                                                                      containerStreaksRecord
                                                                          ?.currentCount,
                                                                      0,
                                                                    )) ||
                                                                ((dateTimeFormat(
                                                                            "E",
                                                                            getCurrentTimestamp) ==
                                                                        'Sun') &&
                                                                    widget
                                                                        .completionToday)
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  2.0,
                                                                  5.0,
                                                                  2.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            (FFMainAxisAlignment
                                                                    .start)
                                                                .flutterValue,
                                                        crossAxisAlignment:
                                                            (FFCrossAxisAlignment
                                                                    .center)
                                                                .flutterValue,
                                                        textBaseline:
                                                            TextBaseline
                                                                .alphabetic,
                                                        children: [
                                                          Text(
                                                            (((List<String>
                                                                            a0) {
                                                                          return a0
                                                                              .indexOf('Sun');
                                                                        }(widget
                                                                            .selectedDays!
                                                                            .toList())) <
                                                                        valueOrDefault<
                                                                            int>(
                                                                          containerStreaksRecord
                                                                              ?.currentCount,
                                                                          0,
                                                                        )) ||
                                                                    ((dateTimeFormat("E",
                                                                                getCurrentTimestamp) ==
                                                                            'Sun') &&
                                                                        widget
                                                                            .completionToday)
                                                                ? '☑'
                                                                : '☐',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Sun');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Sun') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : (dateTimeFormat("E", getCurrentTimestamp) ==
                                                                              'Sun'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Sun',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Sun');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Sun') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 2.0)),
                                                      ),
                                                    ),
                                                  ),
                                                if (widget.selectedDays
                                                        ?.contains('Mon') ??
                                                    true)
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: (((List<String>
                                                                      a0) {
                                                                    return a0
                                                                        .indexOf(
                                                                            'Mon');
                                                                  }(widget
                                                                      .selectedDays!
                                                                      .toList())) <
                                                                  valueOrDefault<
                                                                      int>(
                                                                    containerStreaksRecord
                                                                        ?.currentCount,
                                                                    0,
                                                                  )) ||
                                                              ((dateTimeFormat(
                                                                          "E",
                                                                          getCurrentTimestamp) ==
                                                                      'Mon') &&
                                                                  widget
                                                                      .completionToday)
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color: (((List<String>
                                                                        a0) {
                                                                      return a0
                                                                          .indexOf(
                                                                              'Mon');
                                                                    }(widget
                                                                        .selectedDays!
                                                                        .toList())) <
                                                                    valueOrDefault<
                                                                        int>(
                                                                      containerStreaksRecord
                                                                          ?.currentCount,
                                                                      0,
                                                                    )) ||
                                                                ((dateTimeFormat(
                                                                            "E",
                                                                            getCurrentTimestamp) ==
                                                                        'Mon') &&
                                                                    widget
                                                                        .completionToday)
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  2.0,
                                                                  5.0,
                                                                  2.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            (FFMainAxisAlignment
                                                                    .start)
                                                                .flutterValue,
                                                        crossAxisAlignment:
                                                            (FFCrossAxisAlignment
                                                                    .center)
                                                                .flutterValue,
                                                        textBaseline:
                                                            TextBaseline
                                                                .alphabetic,
                                                        children: [
                                                          Text(
                                                            (((List<String>
                                                                            a0) {
                                                                          return a0
                                                                              .indexOf('Mon');
                                                                        }(widget
                                                                            .selectedDays!
                                                                            .toList())) <
                                                                        valueOrDefault<
                                                                            int>(
                                                                          containerStreaksRecord
                                                                              ?.currentCount,
                                                                          0,
                                                                        )) ||
                                                                    ((dateTimeFormat("E",
                                                                                getCurrentTimestamp) ==
                                                                            'Mon') &&
                                                                        widget
                                                                            .completionToday)
                                                                ? '☑'
                                                                : '☐',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Mon');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Mon') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : (dateTimeFormat("E", getCurrentTimestamp) ==
                                                                              'Mon'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Mon',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Mon');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Mon') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 2.0)),
                                                      ),
                                                    ),
                                                  ),
                                                if (widget.selectedDays
                                                        ?.contains('Tue') ??
                                                    true)
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: (((List<String>
                                                                      a0) {
                                                                    return a0
                                                                        .indexOf(
                                                                            'Tue');
                                                                  }(widget
                                                                      .selectedDays!
                                                                      .toList())) <
                                                                  valueOrDefault<
                                                                      int>(
                                                                    containerStreaksRecord
                                                                        ?.currentCount,
                                                                    0,
                                                                  )) ||
                                                              ((dateTimeFormat(
                                                                          "E",
                                                                          getCurrentTimestamp) ==
                                                                      'Tue') &&
                                                                  widget
                                                                      .completionToday)
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color: (((List<String>
                                                                        a0) {
                                                                      return a0
                                                                          .indexOf(
                                                                              'Tue');
                                                                    }(widget
                                                                        .selectedDays!
                                                                        .toList())) <
                                                                    valueOrDefault<
                                                                        int>(
                                                                      containerStreaksRecord
                                                                          ?.currentCount,
                                                                      0,
                                                                    )) ||
                                                                ((dateTimeFormat(
                                                                            "E",
                                                                            getCurrentTimestamp) ==
                                                                        'Tue') &&
                                                                    widget
                                                                        .completionToday)
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  2.0,
                                                                  5.0,
                                                                  2.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            (FFMainAxisAlignment
                                                                    .start)
                                                                .flutterValue,
                                                        crossAxisAlignment:
                                                            (FFCrossAxisAlignment
                                                                    .center)
                                                                .flutterValue,
                                                        textBaseline:
                                                            TextBaseline
                                                                .alphabetic,
                                                        children: [
                                                          Text(
                                                            (((List<String>
                                                                            a0) {
                                                                          return a0
                                                                              .indexOf('Tue');
                                                                        }(widget
                                                                            .selectedDays!
                                                                            .toList())) <
                                                                        valueOrDefault<
                                                                            int>(
                                                                          containerStreaksRecord
                                                                              ?.currentCount,
                                                                          0,
                                                                        )) ||
                                                                    ((dateTimeFormat("E",
                                                                                getCurrentTimestamp) ==
                                                                            'Tue') &&
                                                                        widget
                                                                            .completionToday)
                                                                ? '☑'
                                                                : '☐',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Tue');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Tue') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : (dateTimeFormat("E", getCurrentTimestamp) ==
                                                                              'Tue'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Tue',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Tue');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Tue') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 2.0)),
                                                      ),
                                                    ),
                                                  ),
                                                if (widget.selectedDays
                                                        ?.contains('Wed') ??
                                                    true)
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: (((List<String>
                                                                      a0) {
                                                                    return a0
                                                                        .indexOf(
                                                                            'Wed');
                                                                  }(widget
                                                                      .selectedDays!
                                                                      .toList())) <
                                                                  valueOrDefault<
                                                                      int>(
                                                                    containerStreaksRecord
                                                                        ?.currentCount,
                                                                    0,
                                                                  )) ||
                                                              ((dateTimeFormat(
                                                                          "E",
                                                                          getCurrentTimestamp) ==
                                                                      'Wed') &&
                                                                  widget
                                                                      .completionToday)
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color: (((List<String>
                                                                        a0) {
                                                                      return a0
                                                                          .indexOf(
                                                                              'Wed');
                                                                    }(widget
                                                                        .selectedDays!
                                                                        .toList())) <
                                                                    valueOrDefault<
                                                                        int>(
                                                                      containerStreaksRecord
                                                                          ?.currentCount,
                                                                      0,
                                                                    )) ||
                                                                ((dateTimeFormat(
                                                                            "E",
                                                                            getCurrentTimestamp) ==
                                                                        'Wed') &&
                                                                    widget
                                                                        .completionToday)
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  2.0,
                                                                  5.0,
                                                                  2.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            (FFMainAxisAlignment
                                                                    .start)
                                                                .flutterValue,
                                                        crossAxisAlignment:
                                                            (FFCrossAxisAlignment
                                                                    .center)
                                                                .flutterValue,
                                                        textBaseline:
                                                            TextBaseline
                                                                .alphabetic,
                                                        children: [
                                                          Text(
                                                            (((List<String>
                                                                            a0) {
                                                                          return a0
                                                                              .indexOf('Wed');
                                                                        }(widget
                                                                            .selectedDays!
                                                                            .toList())) <
                                                                        valueOrDefault<
                                                                            int>(
                                                                          containerStreaksRecord
                                                                              ?.currentCount,
                                                                          0,
                                                                        )) ||
                                                                    ((dateTimeFormat("E",
                                                                                getCurrentTimestamp) ==
                                                                            'Wed') &&
                                                                        widget
                                                                            .completionToday)
                                                                ? '☑'
                                                                : '☐',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Wed');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Wed') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : (dateTimeFormat("E", getCurrentTimestamp) ==
                                                                              'Wed'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Wed',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Wed');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Wed') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 2.0)),
                                                      ),
                                                    ),
                                                  ),
                                                if (widget.selectedDays
                                                        ?.contains('Thu') ??
                                                    true)
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: (((List<String>
                                                                      a0) {
                                                                    return a0
                                                                        .indexOf(
                                                                            'Thu');
                                                                  }(widget
                                                                      .selectedDays!
                                                                      .toList())) <
                                                                  valueOrDefault<
                                                                      int>(
                                                                    containerStreaksRecord
                                                                        ?.currentCount,
                                                                    0,
                                                                  )) ||
                                                              ((dateTimeFormat(
                                                                          "E",
                                                                          getCurrentTimestamp) ==
                                                                      'Thu') &&
                                                                  widget
                                                                      .completionToday)
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color: (((List<String>
                                                                        a0) {
                                                                      return a0
                                                                          .indexOf(
                                                                              'Thu');
                                                                    }(widget
                                                                        .selectedDays!
                                                                        .toList())) <
                                                                    valueOrDefault<
                                                                        int>(
                                                                      containerStreaksRecord
                                                                          ?.currentCount,
                                                                      0,
                                                                    )) ||
                                                                ((dateTimeFormat(
                                                                            "E",
                                                                            getCurrentTimestamp) ==
                                                                        'Thu') &&
                                                                    widget
                                                                        .completionToday)
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  2.0,
                                                                  5.0,
                                                                  2.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            (FFMainAxisAlignment
                                                                    .start)
                                                                .flutterValue,
                                                        crossAxisAlignment:
                                                            (FFCrossAxisAlignment
                                                                    .center)
                                                                .flutterValue,
                                                        textBaseline:
                                                            TextBaseline
                                                                .alphabetic,
                                                        children: [
                                                          Text(
                                                            (((List<String>
                                                                            a0) {
                                                                          return a0
                                                                              .indexOf('Thu');
                                                                        }(widget
                                                                            .selectedDays!
                                                                            .toList())) <
                                                                        valueOrDefault<
                                                                            int>(
                                                                          containerStreaksRecord
                                                                              ?.currentCount,
                                                                          0,
                                                                        )) ||
                                                                    ((dateTimeFormat("E",
                                                                                getCurrentTimestamp) ==
                                                                            'Thu') &&
                                                                        widget
                                                                            .completionToday)
                                                                ? '☑'
                                                                : '☐',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Thu');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Thu') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : (dateTimeFormat("E", getCurrentTimestamp) ==
                                                                              'Thu'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Thu',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Thu');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Thu') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 2.0)),
                                                      ),
                                                    ),
                                                  ),
                                                if (widget.selectedDays
                                                        ?.contains('Fri') ??
                                                    true)
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: (((List<String>
                                                                      a0) {
                                                                    return a0
                                                                        .indexOf(
                                                                            'Fri');
                                                                  }(widget
                                                                      .selectedDays!
                                                                      .toList())) <
                                                                  valueOrDefault<
                                                                      int>(
                                                                    containerStreaksRecord
                                                                        ?.currentCount,
                                                                    0,
                                                                  )) ||
                                                              ((dateTimeFormat(
                                                                          "E",
                                                                          getCurrentTimestamp) ==
                                                                      'Fri') &&
                                                                  widget
                                                                      .completionToday)
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color: (((List<String>
                                                                        a0) {
                                                                      return a0
                                                                          .indexOf(
                                                                              'Fri');
                                                                    }(widget
                                                                        .selectedDays!
                                                                        .toList())) <
                                                                    valueOrDefault<
                                                                        int>(
                                                                      containerStreaksRecord
                                                                          ?.currentCount,
                                                                      0,
                                                                    )) ||
                                                                ((dateTimeFormat(
                                                                            "E",
                                                                            getCurrentTimestamp) ==
                                                                        'Fri') &&
                                                                    widget
                                                                        .completionToday)
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  2.0,
                                                                  5.0,
                                                                  2.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            (FFMainAxisAlignment
                                                                    .start)
                                                                .flutterValue,
                                                        crossAxisAlignment:
                                                            (FFCrossAxisAlignment
                                                                    .center)
                                                                .flutterValue,
                                                        textBaseline:
                                                            TextBaseline
                                                                .alphabetic,
                                                        children: [
                                                          Text(
                                                            (((List<String>
                                                                            a0) {
                                                                          return a0
                                                                              .indexOf('Fri');
                                                                        }(widget
                                                                            .selectedDays!
                                                                            .toList())) <
                                                                        valueOrDefault<
                                                                            int>(
                                                                          containerStreaksRecord
                                                                              ?.currentCount,
                                                                          0,
                                                                        )) ||
                                                                    ((dateTimeFormat("E",
                                                                                getCurrentTimestamp) ==
                                                                            'Fri') &&
                                                                        widget
                                                                            .completionToday)
                                                                ? '☑'
                                                                : '☐',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Fri');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Fri') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : (dateTimeFormat("E", getCurrentTimestamp) ==
                                                                              'Fri'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Fri',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Fri');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Fri') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 2.0)),
                                                      ),
                                                    ),
                                                  ),
                                                if (widget.selectedDays
                                                        ?.contains('Sat') ??
                                                    true)
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: (((List<String>
                                                                      a0) {
                                                                    return a0
                                                                        .indexOf(
                                                                            'Sat');
                                                                  }(widget
                                                                      .selectedDays!
                                                                      .toList())) <
                                                                  valueOrDefault<
                                                                      int>(
                                                                    containerStreaksRecord
                                                                        ?.currentCount,
                                                                    0,
                                                                  )) ||
                                                              ((dateTimeFormat(
                                                                          "E",
                                                                          getCurrentTimestamp) ==
                                                                      'Sat') &&
                                                                  widget
                                                                      .completionToday)
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color: (((List<String>
                                                                        a0) {
                                                                      return a0
                                                                          .indexOf(
                                                                              'Sat');
                                                                    }(widget
                                                                        .selectedDays!
                                                                        .toList())) <
                                                                    valueOrDefault<
                                                                        int>(
                                                                      containerStreaksRecord
                                                                          ?.currentCount,
                                                                      0,
                                                                    )) ||
                                                                ((dateTimeFormat(
                                                                            "E",
                                                                            getCurrentTimestamp) ==
                                                                        'Sat') &&
                                                                    widget
                                                                        .completionToday)
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  2.0,
                                                                  5.0,
                                                                  2.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            (FFMainAxisAlignment
                                                                    .start)
                                                                .flutterValue,
                                                        crossAxisAlignment:
                                                            (FFCrossAxisAlignment
                                                                    .center)
                                                                .flutterValue,
                                                        textBaseline:
                                                            TextBaseline
                                                                .alphabetic,
                                                        children: [
                                                          Text(
                                                            (((List<String>
                                                                            a0) {
                                                                          return a0
                                                                              .indexOf('Sat');
                                                                        }(widget
                                                                            .selectedDays!
                                                                            .toList())) <
                                                                        valueOrDefault<
                                                                            int>(
                                                                          containerStreaksRecord
                                                                              ?.currentCount,
                                                                          0,
                                                                        )) ||
                                                                    ((dateTimeFormat("E",
                                                                                getCurrentTimestamp) ==
                                                                            'Sat') &&
                                                                        widget
                                                                            .completionToday)
                                                                ? '☑'
                                                                : '☐',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Sat');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Sat') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : (dateTimeFormat("E", getCurrentTimestamp) ==
                                                                              'Sat'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryText),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Sat',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: (((List<String>
                                                                                  a0) {
                                                                                return a0.indexOf('Sat');
                                                                              }(widget.selectedDays!
                                                                                  .toList())) <
                                                                              valueOrDefault<
                                                                                  int>(
                                                                                containerStreaksRecord?.currentCount,
                                                                                0,
                                                                              )) ||
                                                                          ((dateTimeFormat("E", getCurrentTimestamp) == 'Sat') &&
                                                                              widget
                                                                                  .completionToday)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .info
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 2.0)),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
