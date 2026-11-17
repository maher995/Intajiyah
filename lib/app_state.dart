import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _downloadedResourceIds =
          prefs.getStringList('ff_downloadedResourceIds') ??
              _downloadedResourceIds;
    });
    _safeInit(() {
      _workMinutes = prefs.getInt('ff_workMinutes') ?? _workMinutes;
    });
    _safeInit(() {
      _breakMinutes = prefs.getInt('ff_breakMinutes') ?? _breakMinutes;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _downloadedResourceIds = [];
  List<String> get downloadedResourceIds => _downloadedResourceIds;
  set downloadedResourceIds(List<String> value) {
    _downloadedResourceIds = value;
    prefs.setStringList('ff_downloadedResourceIds', value);
  }

  void addToDownloadedResourceIds(String value) {
    downloadedResourceIds.add(value);
    prefs.setStringList('ff_downloadedResourceIds', _downloadedResourceIds);
  }

  void removeFromDownloadedResourceIds(String value) {
    downloadedResourceIds.remove(value);
    prefs.setStringList('ff_downloadedResourceIds', _downloadedResourceIds);
  }

  void removeAtIndexFromDownloadedResourceIds(int index) {
    downloadedResourceIds.removeAt(index);
    prefs.setStringList('ff_downloadedResourceIds', _downloadedResourceIds);
  }

  void updateDownloadedResourceIdsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    downloadedResourceIds[index] = updateFn(_downloadedResourceIds[index]);
    prefs.setStringList('ff_downloadedResourceIds', _downloadedResourceIds);
  }

  void insertAtIndexInDownloadedResourceIds(int index, String value) {
    downloadedResourceIds.insert(index, value);
    prefs.setStringList('ff_downloadedResourceIds', _downloadedResourceIds);
  }

  int _workMinutes = 25;
  int get workMinutes => _workMinutes;
  set workMinutes(int value) {
    _workMinutes = value;
    prefs.setInt('ff_workMinutes', value);
  }

  int _breakMinutes = 5;
  int get breakMinutes => _breakMinutes;
  set breakMinutes(int value) {
    _breakMinutes = value;
    prefs.setInt('ff_breakMinutes', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
