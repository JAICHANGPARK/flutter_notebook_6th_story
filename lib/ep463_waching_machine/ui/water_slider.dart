import 'package:flutter/material.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/neumorphic_container.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/colors.dart';

typedef ValueChangeCallback = void Function(double value);

class WaterSlider extends StatefulWidget {
  final double minValue;
  final double maxValue;
  final double initValue;
  final ValueChangeCallback onValueChanged;

  WaterSlider({Key key, @required this.minValue, @required this.maxValue, this.initValue, this.onValueChanged})
      : super(key: key) {
    assert(minValue < maxValue);
    assert(minValue >= 0);
    assert(maxValue >= 0);
  }

  @override
  _WaterSliderState createState() => _WaterSliderState();
}

class _WaterSliderState extends State<WaterSlider> with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius = BorderRadius.circular(50);
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return Row(
        children: [
          NeumorphicContainer(
            width: 85,
            color: CustomColors.containerPressed,
            borderRadius: borderRadius,
          )
        ],
      );
    },

    );
  }
}














