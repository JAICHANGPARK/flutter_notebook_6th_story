import 'package:flutter/material.dart';

typedef ValueChangeCallback = void Function(double value);

class WaterSlider extends StatefulWidget {

  final double minValue;
  final double maxValue;
  final double initValue;
  final ValueChangeCallback onValueChanged;

  WaterSlider({
    @required
    this.minValue,
    @required this.maxValue,
    this.initValue, this.onValueChanged}): super(key:key);

  @override
  _WaterSliderState createState() => _WaterSliderState();
}

class _WaterSliderState extends State<WaterSlider> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
























