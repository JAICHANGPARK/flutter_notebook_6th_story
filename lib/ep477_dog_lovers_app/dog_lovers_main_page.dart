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

  ScrollController _scrollController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _scrollController =ScrollController()..addListener(() {

    });
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
                controller: _scrollController,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Center(
                        child: Text("Challenges",style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 240,
                      width: MediaQuery.of(context).size.width - 24,
                      child: Card(
                        elevation: 24,
                        color: Colors.white,
                        shadowColor: Colors.deepPurple[100],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height - 240,
                        width: MediaQuery.of(context).size.width - 24,
                        child: Card(
                          elevation: 24,
                          color: Colors.white,
                          shadowColor: Colors.deepPurple[100],
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          _topBarHeight = 0;
                        });
                      },
                    ),
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
