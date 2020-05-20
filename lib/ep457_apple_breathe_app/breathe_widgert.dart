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
        painter: BreathePainter(),
      ),
    );
  }
}


class BreathePainter extends CustomPainter{

  final Animation<double> animation;
  final int count;
  final Paint circlePaint;
  final Color color;


  BreathePainter(this.animation, this.count, this.circlePaint, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}