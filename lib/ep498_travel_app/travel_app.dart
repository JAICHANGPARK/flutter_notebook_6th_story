import 'package:flutter/material.dart';

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TravelHomePage(),
    );
  }
}

class TravelHomePage extends StatefulWidget {
  @override
  _TravelHomePageState createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            top:24,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
          )

        ],
      ),
    );
  }
}




















