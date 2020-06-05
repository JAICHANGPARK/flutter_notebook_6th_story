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
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 24,
                    child: Column(
                      children: [
                        Text.rich(TextSpan(children: [
                          TextSpan(text: "Hi,",),
                          TextSpan(text: "Dreamwalker", style: TextStyle()),
                        ]))
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
