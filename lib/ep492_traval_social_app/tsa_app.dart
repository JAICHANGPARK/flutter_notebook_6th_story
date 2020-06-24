import 'package:flutter/material.dart';

class TravelSocialMobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TSMMainPage(),
    );
  }
}

class TSMMainPage extends StatefulWidget {
  @override
  _TSMMainPageState createState() => _TSMMainPageState();
}

class _TSMMainPageState extends State<TSMMainPage> {
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Text(name)
          ],
        ),
    );
  }
}



















