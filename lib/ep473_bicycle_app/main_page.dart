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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              color: Colors.blue,
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
                            color: Colors.white,
                          )
                        ],
                      ),
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
