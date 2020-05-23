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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.keyboard_arrow_left),
                            Text("CHECKOUT"),
                            Icon(Icons.menu),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Placeholder(),
                    )
                  ],
                ),
              ),
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
      ),
    );
  }
}
