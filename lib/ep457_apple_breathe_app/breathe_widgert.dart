import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class BreathWidget extends StatefulWidget {


  @override
  _BreathWidgetState createState() => _BreathWidgetState();
}

class _BreathWidgetState extends State<BreathWidget> with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  Future initVibration()async{
    if(await Vibration.hasVibrator()){
      print("Has Vibration");
      Vibration.vibrate(pattern: [100,100,200,200,300,300,400,400,500,500,]);
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    initVibration();
    super.initState();
    _animationController = AnimationController(duration: Duration(seconds: 5), vsync: this)..repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: BreathePainter(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeOutQuart,
            reverseCurve: Curves.easeOutQuart,
          ),
        ),
        size: Size.infinite,
      ),
    );
  }
}

class BreathePainter extends CustomPainter {
  BreathePainter(this.animation, {this.count = 6, this.color})
      : circlePaint = Paint()
          ..color = Colors.greenAccent
          ..blendMode = BlendMode.softLight,
        super(repaint: animation);

  final Animation<double> animation;
  final int count;
  final Paint circlePaint;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = (size.shortestSide * 0.25) * animation.value;
    for (int i = 0; i < count; i++) {
      final indexAngle = (i * pi / count * 2);
      final angle = indexAngle + (pi * 1.5 * animation.value);
      final offset = Offset(sin(angle), cos(angle)) * radius * 0.985;
      canvas.drawCircle(center + (offset * animation.value), radius, circlePaint);
    }
  }

  @override
  bool shouldRepaint(BreathePainter oldDelegate) {
    return animation != oldDelegate.animation;
  }
}
