import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class DogLoversMainPage extends StatefulWidget {
  @override
  _DogLoversMainPageState createState() => _DogLoversMainPageState();
}

class _DogLoversMainPageState extends State<DogLoversMainPage> with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> _animation;
  double _topBarHeight = 84;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 120,
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          _topBarHeight = 0;
                        });
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 120,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: Colors.white,
                      ),

                    )
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height - _topBarHeight,
              duration: Duration(seconds: 1),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                  )
                ]),
                child: Center(
                  child: Text("Challenges"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
