import '/backend/backend.dart';
import '/components/stat_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'analytics_statics_widget.dart' show AnalyticsStaticsWidget;
import 'package:flutter/material.dart';

class AnalyticsStaticsModel extends FlutterFlowModel<AnalyticsStaticsWidget> {
  ///  Local state fields for this page.

  List<EnergyLogsRecord> lastWeekEnergyLogs = [];
  void addToLastWeekEnergyLogs(EnergyLogsRecord item) =>
      lastWeekEnergyLogs.add(item);
  void removeFromLastWeekEnergyLogs(EnergyLogsRecord item) =>
      lastWeekEnergyLogs.remove(item);
  void removeAtIndexFromLastWeekEnergyLogs(int index) =>
      lastWeekEnergyLogs.removeAt(index);
  void insertAtIndexInLastWeekEnergyLogs(int index, EnergyLogsRecord item) =>
      lastWeekEnergyLogs.insert(index, item);
  void updateLastWeekEnergyLogsAtIndex(
          int index, Function(EnergyLogsRecord) updateFn) =>
      lastWeekEnergyLogs[index] = updateFn(lastWeekEnergyLogs[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in AnalyticsStatics widget.
  List<EnergyLogsRecord>? lastWeekEnergyResult;
  // Model for StatCard.
  late StatCardModel statCardModel1;
  // Model for StatCard.
  late StatCardModel statCardModel2;
  // Model for StatCard.
  late StatCardModel statCardModel3;
  // Model for StatCard.
  late StatCardModel statCardModel4;
  // Model for StatCard.
  late StatCardModel statCardModel5;

  @override
  void initState(BuildContext context) {
    statCardModel1 = createModel(context, () => StatCardModel());
    statCardModel2 = createModel(context, () => StatCardModel());
    statCardModel3 = createModel(context, () => StatCardModel());
    statCardModel4 = createModel(context, () => StatCardModel());
    statCardModel5 = createModel(context, () => StatCardModel());
  }

  @override
  void dispose() {
    statCardModel1.dispose();
    statCardModel2.dispose();
    statCardModel3.dispose();
    statCardModel4.dispose();
    statCardModel5.dispose();
  }
}
