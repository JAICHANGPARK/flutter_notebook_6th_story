import 'package:flutter/foundation.dart';

class ThemeProvider with ChangeNotifier {
  bool _darkMode = false;

  bool get darkMode => _darkMode;

  set darkMode(bool value) {
    if (_darkMode == value) {
      return;
    }
    _darkMode = value;
    notifyListeners();
  }
}
