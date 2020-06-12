import 'package:flutter/material.dart';

class KioskDetailPage extends StatefulWidget {
  @override
  _KioskDetailPageState createState() => _KioskDetailPageState();
}

class _KioskDetailPageState extends State<KioskDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Placeholder(),
            ),
            Divider(),
            Expanded(
              flex: 8,
              child: Placeholder(),
            ),
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
            Expanded(
              flex: 3,
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
