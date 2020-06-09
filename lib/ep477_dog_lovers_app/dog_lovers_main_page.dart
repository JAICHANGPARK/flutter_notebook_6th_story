import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class DogLoversMainPage extends StatefulWidget {
  @override
  _DogLoversMainPageState createState() => _DogLoversMainPageState();
}

class _DogLoversMainPageState extends State<DogLoversMainPage>
with TickerProviderStateMixin{
  AnimationController animationController;
  Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
        ],
      ),
    );
  }
}


















