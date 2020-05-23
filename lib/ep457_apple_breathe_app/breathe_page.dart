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
      if (widget.time * 60 == _timeCounter) {
        _timer.cancel();
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text("Time out"),
                actions: [
                  ButtonBar(
                    children: [
                      FlatButton(
                        child: Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  )
                ],
              );
            });
      }
      setState(() {
        _timeCounter++;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
    _timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: AspectRatio(
                aspectRatio: 0.75,
                child: BreathWidget(
                  time: widget.time,
                )),
          ),
          Text(
            "${DateTime.now().toString().substring(10, 19)}",
            style: Theme.of(context).textTheme.headline2,
          )
        ],
      ),
    );
  }
}
