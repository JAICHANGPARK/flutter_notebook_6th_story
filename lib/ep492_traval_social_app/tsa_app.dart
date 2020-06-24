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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(9),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
            ),
            Expanded(
              flex: 8,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
