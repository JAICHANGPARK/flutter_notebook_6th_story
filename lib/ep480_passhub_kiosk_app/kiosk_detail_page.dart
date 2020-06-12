import 'package:flutter/material.dart';

class KioskDetailPage extends StatefulWidget {
  @override
  _KioskDetailPageState createState() => _KioskDetailPageState();
}

class _KioskDetailPageState extends State<KioskDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueGrey[50],
              Colors.white
            ]
          )
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("PassHub"),
                          Icon(Icons.person_outline)
                        ],
                      )

                    ],
                  ),
                ),
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
      ),
    );
  }
}
