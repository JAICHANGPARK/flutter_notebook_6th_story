import 'package:flutter/foundation.dart';


class SettingsProvider with ChangeNotifier{
  bool _debMode = false;

  bool get devMode => _debMode;
  set devMode(bool value){
    if(_debMode == value){
      return;
    }
    _debMode = value;
    notifyListeners();
  }
}