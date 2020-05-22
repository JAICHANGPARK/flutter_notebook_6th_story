import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class TimeSettingPage extends StatefulWidget {
  @override
  _TimeSettingPageState createState() => _TimeSettingPageState();
}

class _TimeSettingPageState extends State<TimeSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SleekCircularSlider(

          appearance: CircularSliderAppearance(
            customWidths: CustomSliderWidths(progressBarWidth: 8,handlerSize: 20)
          ),
          onChange: (d){
            print(d);
          },
        ),
      ),
    );
  }
}

