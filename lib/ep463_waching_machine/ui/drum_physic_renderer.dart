import 'package:box2d_flame/box2d.dart';
import 'package:flutter/material.dart';

class DrumPhysicRenderer {
  final double ppm;

  DrumPhysicRenderer({@required this.ppm});

  renderBody(Canvas canvas, Body body) {
    if (body == null) return;
    double angle = body.getAngle();
    Vector2 position = body.position * ppm;
    Color color = body.userData as Color;
    Matrix4 matrix = Matrix4.identity()
      ..leftTranslate(position.x, position.y)
      ..rotateZ(angle);
    canvas.save();
    canvas.transform(matrix.storage);
    for(Fixture f = body.getFixtureList(); f != null; f = f.getNext()){
      if(f.getType() == ShapeType.CIRCLE){

      }else if(f.getType() == ShapeType.POLYGON){

      }else if(f.getType() == ShapeType.CHAIN){

      }
    }
    canvas.restore();
  }

  _drawCircleShape(Canvas canvas, CircleShape circle, Color color){
    canvas.drawCircle(Offset(circle.p.x * ppm, circle.p.x * ppm), circle.radius * ppm,
    Paint()..style = PaintingStyle.fill..color = color != null ? color : Colors.amber);
  }





}














