import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as Vector;

class WaveContainer extends StatefulWidget {
  final Size size;
  final Offset offset;
  final Color color;
  final Duration duration;
  final int sinWidthFraction;

  WaveContainer(
      {this.size, this.offset, this.color, this.duration = const Duration(seconds: 4), this.sinWidthFraction = 3});

  @override
  _WaveContainerState createState() => _WaveContainerState();
}

class _WaveContainerState extends State<WaveContainer> with TickerProviderStateMixin {
  AnimationController animationController;
  List<Offset> animationListener = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(vsync: this, duration: widget.duration);
    animationController.addListener(() {
      animationListener.clear();
      for (double i = -2 - widget.offset.dx; i <= widget.size.width.toInt() + 2; i++) {
        print(i);
        animationListener.add(
          Offset(
              i.toDouble() + widget.offset.dx,
              sin(((animationController.value * 360 - i) % 360 * Vector.degrees2Radians) * widget.sinWidthFraction) *
                      8 +
                  10 +
                  widget.offset.dy),
        );
      }
    });
    animationController.repeat();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    List<Color> _gradientColors = [
      Color.fromRGBO(254, 193, 45, 1),
      Color.fromRGBO(254, 193, 45, 1),
      Color.fromRGBO(254, 193, 45, 1),
    ];
    return Container();
  }
}



















