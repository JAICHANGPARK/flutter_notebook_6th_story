import 'package:flutter/material.dart';

class MarketPlaceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MarketMainPage(),
    );
  }
}

class MarketMainPage extends StatefulWidget {
  @override
  _MarketMainpageState createState() => _MarketMainpageState();
}

class _MarketMainpageState extends State<MarketMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Placeholder(),
          ),
          Expanded(
            flex: 1,
            child: Placeholder(),
          ),
          Expanded(
            flex: 1,
            child: Placeholder(color: Colors.black),
          ),
          Expanded(
            flex: 1,
            child: Placeholder(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
