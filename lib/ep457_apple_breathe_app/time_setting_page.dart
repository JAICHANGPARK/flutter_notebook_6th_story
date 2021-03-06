import 'package:flutter/material.dart';
import 'package:flutternotebook6thstory/ep457_apple_breathe_app/breathe_page.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class TimeSettingPage extends StatefulWidget {
  @override
  _TimeSettingPageState createState() => _TimeSettingPageState();
}

class _TimeSettingPageState extends State<TimeSettingPage> {
  int _time = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Set Breathe Time",style: Theme.of(context).textTheme.headline3,),
          SizedBox(height: 38,),
          Center(
            child: Container(
              height: 380,
              width: 240,
              child: SleekCircularSlider(
                min: 1,
                max: 30,
                initialValue: 10,
                appearance: CircularSliderAppearance(
                  customColors: CustomSliderColors(
                    trackColor: Colors.teal,
                    progressBarColor: Colors.greenAccent
                  ),
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
                  setState(() {
                    _time = d.toInt();
                  });
                },
              ),
            ),
          ),
          OutlineButton(
            color: Colors.greenAccent,
            child: Text("Start".toUpperCase(),style: Theme.of(context).textTheme.headline5,),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=>BreathePage(time: _time,)
              ));
            },)
        ],
      ),
    );
  }
}

