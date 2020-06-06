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
        child: Column(
          children: [
            Container(
              height: 220,
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
                          )
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
            )
          ],
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
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text("Home")),
        ],
      ),
    );
  }
}














