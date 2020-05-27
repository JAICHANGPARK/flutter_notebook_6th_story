import 'package:flutter/material.dart';

class NeumorphicContainer extends StatelessWidget {
  final bool pressed;
  final double width;
  final double height;
  final  Widget child;
  final EdgeInsetsGeometry margin;
  final Color color;
  final BorderRadius borderRadius;
  final BoxBorder border;
  final Decoration decoration;
  final Decoration foregroundDecoration;
  final bool disableForegroundDecoration;
  final bool disabled;


  NeumorphicContainer({this.pressed, this.width, this.height, this.child, this.margin, this.color, this.borderRadius,
    this.border, this.decoration, this.foregroundDecoration, this.disableForegroundDecoration, this.disabled});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
