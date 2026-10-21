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
