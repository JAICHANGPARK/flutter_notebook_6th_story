import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

const Color fontMainColor = Color(0xff293038);
const Color fontSecondColor = Color(0xff696e74);
const Color bicycleAppColor = Color(0xffffc329);

class BicycleRentalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BicycleRentalMainPage(),
    );
  }
}

class BicycleRentalMainPage extends StatefulWidget {
  @override
  _BicycleRentalMainPageState createState() => _BicycleRentalMainPageState();
}

class _BicycleRentalMainPageState extends State<BicycleRentalMainPage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      top: 24,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(TextSpan(children: [
                              TextSpan(text: "Hi, ", style: TextStyle(color: fontSecondColor, fontSize: 18)),
                              TextSpan(text: "Dreamwalker", style: TextStyle(color: fontMainColor, fontSize: 18)),
                            ])),
                            SizedBox(
                              height: 24,
                            ),
                            Text.rich(TextSpan(children: [
                              TextSpan(text: "Select ", style: TextStyle(color: fontSecondColor, fontSize: 22)),
                              TextSpan(
                                  text: "Bicycle",
                                  style: TextStyle(color: fontMainColor, fontSize: 22, fontWeight: FontWeight.bold)),
                            ])),
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: "To Riding ",
                                  style: TextStyle(color: fontMainColor, fontSize: 22, fontWeight: FontWeight.bold)),
                              TextSpan(text: "Now.", style: TextStyle(color: fontSecondColor, fontSize: 22)),
                            ])),
                            SizedBox(
                              height: 24,
                            ),
                            Container(
                                height: 48,
                                width: MediaQuery.of(context).size.width - 32,
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.search),
                                    Expanded(
                                        child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none, hintText: "Where do you want to go biking?"),
                                    )),
                                    Container(
                                      height: 38,
                                      width: 38,
                                      decoration:
                                          BoxDecoration(color: bicycleAppColor, borderRadius: BorderRadius.circular(8)),
                                      child: Center(
                                        child: Icon(Icons.map),
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: -2,
                      top: -2,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: bicycleAppColor), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                                border: Border.all(color: bicycleAppColor),
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: bicycleAppColor.withOpacity(0.2),
                                      blurRadius: 4,
                                      spreadRadius: -4,
                                      offset: Offset(0, 16))
                                ]),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 64,
                    padding: EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                bottom: 0,
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: bicycleAppColor,
                                ),
                              ),
                              Positioned(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Center(
                                    child: Text(
                                      "Newest",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          width: 70,
                          child: Stack(
                            children: [
                              Positioned(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Center(
                                    child: Text(
                                      "Popular",
                                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 160,
                    padding: EdgeInsets.only(left: 16),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 240,
                            child: Card(
                              color: Colors.white,
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 48,
                    padding: EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      "Join The Community",
                    ),
                  ),
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: bicycleAppColor.withOpacity(0.5), borderRadius: BorderRadius.circular(7)),
                              )),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Tegal Bike Community",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Icon(Icons.more_horiz),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 14,
                                      ),
                                      Text(
                                        "85 Members",
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        radius: 12,
                                      ),
                                      Container(
                                        height: 32,
                                        width: 64,
                                        decoration: BoxDecoration(
                                          color: bicycleAppColor,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                          child: Text("join"),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: bicycleAppColor.withOpacity(0.5), borderRadius: BorderRadius.circular(7)),
                              )),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Tegal Bike Community",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Icon(Icons.more_horiz),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 14,
                                      ),
                                      Text(
                                        "85 Members",
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        radius: 12,
                                      ),
                                      Container(
                                        height: 32,
                                        width: 64,
                                        decoration: BoxDecoration(
                                          color: bicycleAppColor,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                          child: Text("join"),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _pageIndex,
        onItemSelected: (int value) {
          setState(() {
            _pageIndex = value;
          });
        },
        items: [
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home"), activeColor: bicycleAppColor),
          BottomNavyBarItem(
              icon: Icon(Icons.motorcycle),
              title: Text("cycle"),
              inactiveColor: Colors.black,
              activeColor: bicycleAppColor),
          BottomNavyBarItem(
              icon: Icon(Icons.email), title: Text("email"), inactiveColor: Colors.black, activeColor: bicycleAppColor),
          BottomNavyBarItem(
              icon: Icon(Icons.multiline_chart),
              title: Text("Chart"),
              inactiveColor: Colors.black,
              activeColor: bicycleAppColor),
        ],
      ),
    );
  }
}
