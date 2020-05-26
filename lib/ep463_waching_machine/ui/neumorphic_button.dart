import 'package:flutter/material.dart';

class NeumorphicButton extends StatefulWidget {
  final bool pressed;
  final double width;
  final double height;
  final Widget child;
  final EdgeInsetsGeometry margin;
  final GestureTapCallback onTap;
  final Color color;
  final bool disabled;

  NeumorphicButton(
      {Key key,
      this.pressed,
      this.width = 54.0,
      this.height = 54.0,
      @required this.child,
      this.margin,
      this.onTap,
      this.color,
      this.disabled})
      : super(key: key);

  @override
  _NeumorphicButtonState createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
