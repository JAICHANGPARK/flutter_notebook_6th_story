import 'package:flutter/material.dart';

import 'breathe_widgert.dart';


class BreathePage extends StatefulWidget {
  @override
  _BreathePageState createState() => _BreathePageState();
}

class _BreathePageState extends State<BreathePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: BreathWidget(),
      ),
    );
  }
}

