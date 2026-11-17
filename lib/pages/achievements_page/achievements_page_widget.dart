import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/achievement_item_widget.dart';
import '/components/achievements_empty_state_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'achievements_page_model.dart';
export 'achievements_page_model.dart';

/// DSL page AchievementsPage
class AchievementsPageWidget extends StatefulWidget {
  const AchievementsPageWidget({super.key});

  static String routeName = 'AchievementsPage';
  static String routePath = '/achievements';

  @override
  State<AchievementsPageWidget> createState() => _AchievementsPageWidgetState();
}

class _AchievementsPageWidgetState extends State<AchievementsPageWidget> {
  late AchievementsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AchievementsPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: true,
          leading: FlutterFlowIconButton(
            buttonSize: 44.0,
            icon: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Achievements',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).titleLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).titleLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
              crossAxisAlignment: (FFCrossAxisAlignment.stretch).flutterValue,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Text(
                    'Milestones you\'ve earned by keeping your habits going.',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                          fontWeight:
                              FlutterFlowTheme.of(context).bodySmall.fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodySmall.fontStyle,
                        ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
                  crossAxisAlignment:
                      (FFCrossAxisAlignment.center).flutterValue,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Icon(
                      Icons.emoji_events,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    Text(
                      'Unlocked',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
                Expanded(
                  child: StreamBuilder<List<AchievementsRecord>>(
                    stream: queryAchievementsRecord(
                      queryBuilder: (achievementsRecord) => achievementsRecord
                          .where(
                            'user_id',
                            isEqualTo: currentUserUid,
                          )
                          .orderBy('unlocked_at', descending: true),
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
                      List<AchievementsRecord> listViewAchievementsRecordList =
                          snapshot.data!;
                      if (listViewAchievementsRecordList.isEmpty) {
                        return AchievementsEmptyStateWidget();
                      }

                      return Builder(
                        builder: (context) {
                          final achievement =
                              listViewAchievementsRecordList.toList();
                          if (achievement.isEmpty) {
                            return AchievementsEmptyStateWidget();
                          }

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            primary: false,
                            scrollDirection: Axis.vertical,
                            itemCount: achievement.length,
                            separatorBuilder: (_, __) => SizedBox(height: 16.0),
                            itemBuilder: (context, achievementIndex) {
                              final achievementItem =
                                  achievement[achievementIndex];
                              return wrapWithModel(
                                model: _model.achievementItemModels.getModel(
                                  achievementIndex.toString(),
                                  achievementIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: AchievementItemWidget(
                                  key: Key(
                                    'Keyowd_${achievementIndex.toString()}',
                                  ),
                                  iconBg: FlutterFlowTheme.of(context).accent3,
                                  icon: Icon(
                                    Icons.emoji_events,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 20.0,
                                  ),
                                  iconColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                  title:
                                      '${achievementItem.milestone.toString()}-Day Streak',
                                  subtitle: dateTimeFormat(
                                      "yMMMd", achievementItem.unlockedAt),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment:
                          (FFMainAxisAlignment.start).flutterValue,
                      crossAxisAlignment:
                          (FFCrossAxisAlignment.center).flutterValue,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Icon(
                          Icons.lock_outline,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                        Expanded(
                          child: Text(
                            'Next milestones: 3, 7, 14, 30 days. Keep your streak going!',
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                          ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
