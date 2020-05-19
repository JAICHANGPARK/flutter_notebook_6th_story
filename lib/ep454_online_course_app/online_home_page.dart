import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnlineHomePage extends StatefulWidget {
  @override
  _OnlineHomePageState createState() => _OnlineHomePageState();
}

class _OnlineHomePageState extends State<OnlineHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.menu), Icon(Icons.search)],
                  ),
                )),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back, Dreamwalker!",
                      style: GoogleFonts.oswald(fontSize: 18, color: Colors.blueGrey, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      "Continue learning",
                      style: GoogleFonts.oxygen(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        letterSpacing: 2,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 16, bottom: 16, right: 16),
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.indigo[200],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(4),
                                          bottomRight: Radius.circular(32),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.indigo[500],
                                              spreadRadius: -8,
                                              blurRadius: 16,
                                              offset: Offset(0, 8))
                                        ]),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Container(),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "My Progress",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height: 8,
                                                            width: 100,
                                                            decoration: BoxDecoration(
                                                                color: Colors.white,
                                                                borderRadius: BorderRadius.circular(8)),
                                                            padding: EdgeInsets.all(2),
                                                            child: Stack(
                                                              children: [
                                                                Container(
                                                                  width: 84,
                                                                  decoration: BoxDecoration(
                                                                    color: Colors.deepPurpleAccent[200],
                                                                    borderRadius: BorderRadius.circular(4),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          Text(
                                                            "64%",
                                                            style: TextStyle(color: Colors.white),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.ac_unit,
                                                            size: 15,
                                                            color: Colors.white,
                                                          ),
                                                          Text(
                                                            "Skilled",
                                                            style: TextStyle(fontSize: 12, color: Colors.white),
                                                          ),
                                                          Icon(
                                                            Icons.timer,
                                                            size: 15,
                                                            color: Colors.white,
                                                          ),
                                                          Text(
                                                            "6 hour left",
                                                            style: TextStyle(fontSize: 12, color: Colors.white),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.timer,
                                                  size: 15,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "Next Lesson 02. Intro to Lottie Files",
                                                  style: TextStyle(fontSize: 12, color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.pink[200],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(24),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black.withOpacity(0.1),
                                              spreadRadius: 2,
                                              blurRadius: 3,
                                              offset: Offset(2, 4))
                                        ]),
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "ANIMATION",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Image.network(
                                          "https://assets-ouch.icons8.com/thumb/805/53e1fb0f-07c0-415b-a2b6-b178acdc55bc.png",
                                          fit: BoxFit.cover,
                                          height: 64,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 16, bottom: 16, right: 16),
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.orange[200],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(4),
                                          bottomRight: Radius.circular(32),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.orange[500],
                                              spreadRadius: -8,
                                              blurRadius: 16,
                                              offset: Offset(0, 8))
                                        ]),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Container(),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "My Progress",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height: 8,
                                                            width: 100,
                                                            decoration: BoxDecoration(
                                                                color: Colors.white,
                                                                borderRadius: BorderRadius.circular(8)),
                                                            padding: EdgeInsets.all(2),
                                                            child: Stack(
                                                              children: [
                                                                Container(
                                                                  width: 84,
                                                                  decoration: BoxDecoration(
                                                                    color: Colors.deepPurpleAccent[200],
                                                                    borderRadius: BorderRadius.circular(4),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          Text(
                                                            "64%",
                                                            style: TextStyle(color: Colors.white),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.ac_unit,
                                                            size: 15,
                                                            color: Colors.white,
                                                          ),
                                                          Text(
                                                            "Skilled",
                                                            style: TextStyle(fontSize: 12, color: Colors.white),
                                                          ),
                                                          Icon(
                                                            Icons.timer,
                                                            size: 15,
                                                            color: Colors.white,
                                                          ),
                                                          Text(
                                                            "6 hour left",
                                                            style: TextStyle(fontSize: 12, color: Colors.white),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.timer,
                                                  size: 15,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "Next Lesson 02. Intro to Lottie Files",
                                                  style: TextStyle(fontSize: 12, color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.green[200],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(24),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black.withOpacity(0.1),
                                              spreadRadius: 2,
                                              blurRadius: 3,
                                              offset: Offset(2, 4))
                                        ]),
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "HEALING",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Image.network(
                                          "https://assets-ouch.icons8.com/thumb/805/53e1fb0f-07c0-415b-a2b6-b178acdc55bc.png",
                                          fit: BoxFit.cover,
                                          height: 64,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 11,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Category",
                            style: GoogleFonts.oxygen(
                              fontSize: 28,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Center(
                            child: Text(
                              "See All",
                              style:
                                  GoogleFonts.oxygen(fontSize: 14, color: Colors.blueGrey, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 3)]),
                                  margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 4,
                                        left: 4,
                                        right: 0,
                                        bottom: 0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(colors: [
                                                Colors.yellow,
                                                Colors.red[500],
                                              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(24),
                                                  topRight: Radius.circular(4),
                                                  bottomLeft: Radius.circular(4),
                                                  bottomRight: Radius.circular(24))),
                                          padding: EdgeInsets.only(bottom: 4, left: 16),
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Text("12 courses", style: TextStyle(
                                              color: Colors.white
                                            ),),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        right: 16,
                                        bottom: 24,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(24),
                                                  topRight: Radius.circular(4),
                                                  bottomLeft: Radius.circular(4),
                                                  bottomRight: Radius.circular(24))),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                "UX DESIGN",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Image.network(
                                                  "https://assets-ouch.icons8.com/thumb/428/88b57de6-38b6-4086-887e-93f181f27ec7.png")
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 3)]),
                                  margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 4,
                                        left: 4,
                                        right: 0,
                                        bottom: 0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(colors: [
                                                Colors.yellow[400],
                                                Colors.green[500],
                                              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(24),
                                                  topRight: Radius.circular(4),
                                                  bottomLeft: Radius.circular(4),
                                                  bottomRight: Radius.circular(24))),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        right: 16,
                                        bottom: 24,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(24),
                                                  topRight: Radius.circular(4),
                                                  bottomLeft: Radius.circular(4),
                                                  bottomRight: Radius.circular(24))),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 3)]),
                                  margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 4,
                                        left: 4,
                                        right: 0,
                                        bottom: 0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(colors: [
                                                Colors.purple[400],
                                                Colors.blue[500],
                                              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(24),
                                                  topRight: Radius.circular(4),
                                                  bottomLeft: Radius.circular(4),
                                                  bottomRight: Radius.circular(24))),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        right: 16,
                                        bottom: 24,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(24),
                                                  topRight: Radius.circular(4),
                                                  bottomLeft: Radius.circular(4),
                                                  bottomRight: Radius.circular(24))),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 3)]),
                                  margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 4,
                                        left: 4,
                                        right: 0,
                                        bottom: 0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(colors: [
                                                Colors.pink[400],
                                                Colors.purple[500],
                                              ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(24),
                                                  topRight: Radius.circular(4),
                                                  bottomLeft: Radius.circular(4),
                                                  bottomRight: Radius.circular(24))),
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        right: 16,
                                        bottom: 24,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(24),
                                                  topRight: Radius.circular(4),
                                                  bottomLeft: Radius.circular(4),
                                                  bottomRight: Radius.circular(24))),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
