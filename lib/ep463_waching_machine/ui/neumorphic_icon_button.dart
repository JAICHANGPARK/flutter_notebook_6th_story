import 'package:flutter/material.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/neumorphic_button.dart';

class NeumorphicIconButton extends StatelessWidget {
  final Icon icon;
  final EdgeInsetsGeometry margin;
  final GestureTapCallback onTap;
  final Color color;
  final bool pressed;
  final disabled;

  NeumorphicIconButton({this.icon, this.margin, this.onTap, this.color, this.pressed, this.disabled});

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
        child: icon,
      onTap: onTap,
      margin: margin,
      color: color,
      pressed: pressed,
      disabled: disabled,
    );
  }
}
