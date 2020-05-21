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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: BreathWidget(),
      ),
    );
  }
}

