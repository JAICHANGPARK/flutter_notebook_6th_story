import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class DogLoversMainPage extends StatefulWidget {
  @override
  _DogLoversMainPageState createState() => _DogLoversMainPageState();
}

class _DogLoversMainPageState extends State<DogLoversMainPage> with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> _animation;
  double _topBarHeight = 0.0;

  ScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _scrollController = ScrollController()
      ..addListener(() {
        print(_scrollController.offset);
        if (_scrollController.offset != 0.0) {
          setState(() {
            _topBarHeight = 94;
          });
        } else if (_scrollController.offset == 0.0) {
          setState(() {
            _topBarHeight = 0.0;
          });
        }
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
                        child: Text(
                          "Challenges",
                          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 240,
                      width: MediaQuery.of(context).size.width - 24,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                        elevation: 24,
                        color: Colors.white,
                        shadowColor: Colors.deepPurple[100],
                        child: Column(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.only(topRight: Radius.circular(24), topLeft: Radius.circular(24)),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.white,
                                          Colors.deepPurple[50],
                                        ])),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Spacer(),
                                    Text(
                                      "Weekly Training",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Teach your dog a new trick in a week",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 240,
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Image.network(
                                          "https://assets-ouch.icons8.com/thumb/476/6e48f43e-bfb2-4ac9-a22e-ccb0fd5535cd.png",
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Placeholder(),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height - 240,
                        width: MediaQuery.of(context).size.width - 24,
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                          elevation: 24,
                          color: Colors.white,
                          shadowColor: Colors.deepPurple[100],
                          child: Column(
                            children: [
                              Expanded(
                                flex: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(24), topLeft: Radius.circular(24)),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.white,
                                            Colors.deepPurple[50],
                                          ])),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Spacer(),
                                      Text(
                                        "Weekly Training",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Teach your dog a new trick in a week",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 240,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.network(
                                            "https://assets-ouch.icons8.com/thumb/476/6e48f43e-bfb2-4ac9-a22e-ccb0fd5535cd.png",
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex:3,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Placeholder(),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("5 days"),
                                                  Text("to finish"),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Placeholder(),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
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
              duration: Duration(milliseconds: 300),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                  )
                ]),
                child: Center(
                  child: Text(
                    "Challenges",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
