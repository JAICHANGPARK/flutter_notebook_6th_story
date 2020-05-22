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
      body: Column(
        children: [
          Text("Set Breathe Time"),
          Center(
            child: SleekCircularSlider(

              appearance: CircularSliderAppearance(
                customWidths: CustomSliderWidths(progressBarWidth: 8,handlerSize: 20),
                infoProperties: InfoProperties(
                  modifier: (v)=> v.ceil().toInt().toString(),
                  mainLabelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 64
                  )
                )
              ),
              onChange: (d){
                print(d);
              },
            ),
          ),
        ],
      ),
    );
  }
}

