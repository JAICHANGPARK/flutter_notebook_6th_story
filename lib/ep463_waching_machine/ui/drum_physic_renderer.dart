import 'package:box2d_flame/box2d.dart';
import 'package:flutter/material.dart';

class DrumPhysicRenderer{
  final double ppm;

  DrumPhysicRenderer({@required this.ppm});

  renderBody(Canvas canvas, Body body){
    if(body == null) return;
    double angle = body.getAngle();
    Vector2 position = body.position * ppm;
    Color color = body.userData as Color;
    Matrix4 matrix = Matrix4.identity()..leftTranslate(position.x, position.y)
    ..rotateZ(angle);
    canvas.save();
    canvas.transform(matrix.storage);
  }
}