import '/components/achievement_item_widget.dart';
import '/components/insight_li_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'analytics_monthly_report_widget.dart' show AnalyticsMonthlyReportWidget;
import 'package:flutter/material.dart';

class AnalyticsMonthlyReportModel
    extends FlutterFlowModel<AnalyticsMonthlyReportWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AchievementItem.
  late AchievementItemModel achievementItemModel1;
  // Model for AchievementItem.
  late AchievementItemModel achievementItemModel2;
  // Model for AchievementItem.
  late AchievementItemModel achievementItemModel3;
  // Model for InsightLi.
  late InsightLiModel insightLiModel1;
  // Model for InsightLi.
  late InsightLiModel insightLiModel2;
  // Model for InsightLi.
  late InsightLiModel insightLiModel3;
  // Model for InsightLi.
  late InsightLiModel insightLiModel4;
  // Model for InsightLi.
  late InsightLiModel insightLiModel5;
  // Model for InsightLi.
  late InsightLiModel insightLiModel6;

  @override
  void initState(BuildContext context) {
    achievementItemModel1 = createModel(context, () => AchievementItemModel());
    achievementItemModel2 = createModel(context, () => AchievementItemModel());
    achievementItemModel3 = createModel(context, () => AchievementItemModel());
    insightLiModel1 = createModel(context, () => InsightLiModel());
    insightLiModel2 = createModel(context, () => InsightLiModel());
    insightLiModel3 = createModel(context, () => InsightLiModel());
    insightLiModel4 = createModel(context, () => InsightLiModel());
    insightLiModel5 = createModel(context, () => InsightLiModel());
    insightLiModel6 = createModel(context, () => InsightLiModel());
  }

  @override
  void dispose() {
    achievementItemModel1.dispose();
    achievementItemModel2.dispose();
    achievementItemModel3.dispose();
    insightLiModel1.dispose();
    insightLiModel2.dispose();
    insightLiModel3.dispose();
    insightLiModel4.dispose();
    insightLiModel5.dispose();
    insightLiModel6.dispose();
  }
}
