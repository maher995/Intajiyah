import '/components/achievement_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'achievements_page_widget.dart' show AchievementsPageWidget;
import 'package:flutter/material.dart';

class AchievementsPageModel extends FlutterFlowModel<AchievementsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for AchievementItem.
  late FlutterFlowDynamicModels<AchievementItemModel> achievementItemModels;

  @override
  void initState(BuildContext context) {
    achievementItemModels =
        FlutterFlowDynamicModels(() => AchievementItemModel());
  }

  @override
  void dispose() {
    achievementItemModels.dispose();
  }
}
