import 'package:flutter/material.dart';

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
                        Text.rich(
                          TextSpan(
                            children: [
                            TextSpan(
                              text: "Hi,"
                            )
                            ]
                          )
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
    );
  }
}























