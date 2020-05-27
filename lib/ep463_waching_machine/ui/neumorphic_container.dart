import 'package:flutter/material.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/inner_shadow_decorator.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/colors.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/consts.dart';

class NeumorphicContainer extends StatelessWidget {
  final bool pressed;
  final double width;
  final double height;
  final Widget child;
  final EdgeInsetsGeometry margin;
  final Color color;
  final BorderRadius borderRadius;
  final BoxBorder border;
  final Decoration decoration;
  final Decoration foregroundDecoration;
  final bool disableForegroundDecoration;
  final bool disabled;

  NeumorphicContainer(
      {this.pressed,
      this.width,
      this.height,
      this.child,
      this.margin,
      this.color,
      this.borderRadius,
      this.border,
      this.decoration,
      this.foregroundDecoration,
      this.disableForegroundDecoration,
      this.disabled});

  @override
  Widget build(BuildContext context) {
    BorderRadius defaultRadius = BorderRadius.circular(NEUMORPHIC_DEFAULT_RADIUS);
    InnerShadowDecoration defaultForegroundDecoration = InnerShadowDecoration(
        colors: pressed == true
            ? [
                CustomColors.containerInnerShadowTop,
                CustomColors.containerInnerShadowBottom,
              ]
            : [
                CustomColors.container,
                CustomColors.container,
              ],
        borderRadius: borderRadius ?? defaultRadius);
    return Opacity(
      opacity: disabled == true ? .5 : 1,
      child: AnimatedContainer(
        width: width,
        height: height,
        margin: margin,
        duration: const Duration(milliseconds: 150),
        padding: pressed ?? const EdgeInsets.all(8),
        foregroundDecoration: disableForegroundDecoration != true ?
        foregroundDecoration ?? defaultForegroundDecoration : null,
        decoration: decoration ??
        BoxDecoration(
          borderRadius: borderRadius ?? defaultRadius,
          border:  border,
          
        ),
      ),
    );
  }
}




















