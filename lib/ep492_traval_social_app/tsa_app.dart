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
        body: SafeArea(
          child: Column(
            children: [
             Expanded(flex: 1, child: Placeholder(),),
              Expanded(flex: 2, child: Placeholder(),),
              Expanded(flex: 1, child: Placeholder(),),
              Expanded(flex: 8, child: Placeholder(),)

            ],
          ),
        ),
    );
  }
}



















