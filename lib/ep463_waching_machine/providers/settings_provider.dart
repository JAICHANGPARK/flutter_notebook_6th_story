import 'package:flutter/foundation.dart';


class SettingsProvider with ChangeNotifier{
  bool get devMode => _devMode;
  set devMode(bool value) {
    if (_devMode == value) {
      return;
    }

    _devMode = value;
    notifyListeners();
  }

  bool _devMode = false;
}