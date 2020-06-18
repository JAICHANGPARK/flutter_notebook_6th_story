import 'package:flutter/material.dart';

class DmmApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DmmMainPage(),
    );
  }
}
class DmmMainPage extends StatefulWidget {
  @override
  _DmmMainPageState createState() => _DmmMainPageState();
}

class _DmmMainPageState extends State<DmmMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Placeholder(),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
            ),
            Expanded(
              flex: 5,
              child: Placeholder(),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}













