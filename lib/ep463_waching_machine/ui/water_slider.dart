import 'package:flutter/material.dart';

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
  void dispose() {
    // TODO: implement dispose
    _animationController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}






















