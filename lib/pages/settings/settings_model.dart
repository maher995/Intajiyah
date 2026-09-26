import '/components/setting_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SettingRow.
  late SettingRowModel settingRowModel1;
  // Model for SettingRow.
  late SettingRowModel settingRowModel2;
  // Model for SettingRow.
  late SettingRowModel settingRowModel3;
  // Model for SettingRow.
  late SettingRowModel settingRowModel4;
  // Model for SettingRow.
  late SettingRowModel settingRowModel5;
  // Model for SettingRow.
  late SettingRowModel settingRowModel6;

  @override
  void initState(BuildContext context) {
    settingRowModel1 = createModel(context, () => SettingRowModel());
    settingRowModel2 = createModel(context, () => SettingRowModel());
    settingRowModel3 = createModel(context, () => SettingRowModel());
    settingRowModel4 = createModel(context, () => SettingRowModel());
    settingRowModel5 = createModel(context, () => SettingRowModel());
    settingRowModel6 = createModel(context, () => SettingRowModel());
  }

  @override
  void dispose() {
    settingRowModel1.dispose();
    settingRowModel2.dispose();
    settingRowModel3.dispose();
    settingRowModel4.dispose();
    settingRowModel5.dispose();
    settingRowModel6.dispose();
  }
}
