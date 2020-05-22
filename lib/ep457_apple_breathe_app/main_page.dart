import 'package:flutter/material.dart';

import 'breathe_page.dart';
import 'time_setting_page.dart';

class BreatheApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: TimeSettingPage(),
    );
  }
}
