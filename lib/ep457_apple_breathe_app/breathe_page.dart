import 'dart:async';

import 'package:flutter/material.dart';

import 'breathe_widgert.dart';


class BreathePage extends StatefulWidget {
  final int time;
  BreathePage({this.time});
  @override
  _BreathePageState createState() => _BreathePageState();
}

class _BreathePageState extends State<BreathePage> {

  Timer _timer;
  int _timeCounter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _timeCounter++;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: AspectRatio(
              aspectRatio: 0.75,
                child: BreathWidget(time: widget.time,)),
          ),
          Text("${_timeCounter.toString()}")
        ],
      ),
    );
  }
}

