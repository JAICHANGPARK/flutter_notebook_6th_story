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
      resizeToAvoidBottomInset: false,
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
                  border: Border.all(color: Colors.grey[300]),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                      hintText: "Search",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("MONDAY, JUNE 8"), Text("Latest News")],
                  ),
                  CircleAvatar(
                    radius: 24,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
            ),
            Expanded(
              flex: 8,
              child: Container(
                decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.grey[300]))),
                padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 12),
                        width: MediaQuery.of(context).size.width - 32,
                        decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(8)),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
