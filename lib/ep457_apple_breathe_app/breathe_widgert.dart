import 'dart:math';

import 'package:flutter/material.dart';

class BreathWidget extends StatefulWidget {
  @override
  _BreathWidgetState createState() => _BreathWidgetState();
}

class _BreathWidgetState extends State<BreathWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        painter: BreathePainter(

        ),
      ),
    );
  }
}

class BreathePainter extends CustomPainter {
  BreathePainter(this.animation, {this.count = 6, this.color})
      : circlePaint = Paint()
          ..color = Colors.blue
          ..blendMode = BlendMode.modulate,
        super(repaint: animation);

  final Animation<double> animation;
  final int count;
  final Paint circlePaint;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = (size.shortestSide * 0.25) * animation.value;
    for(int i = 0; i < count; i++){
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






















