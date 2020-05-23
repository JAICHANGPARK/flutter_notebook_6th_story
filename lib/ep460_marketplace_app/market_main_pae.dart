import 'package:flutter/cupertino.dart';
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
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.keyboard_arrow_left),
                            Text("CHECKOUT", style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                            Icon(Icons.menu),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("01/02", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text("Information",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                                ),)
                              ],
                            ),
                            Container(
                              height: 16,
                              width: 72,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 6,
                                    bottom: 6,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: Container(
                                      width: 16,
                                      decoration:BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all()
                                      ),
                                      padding: EdgeInsets.all(2),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: Container(
                                      width: 16,
                                      decoration:BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          border: Border.all()
                                      ),
                                      padding: EdgeInsets.all(2),

                                    ),
                                  )

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: Row(
                  children: [

                  ],
                ),
              ),
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
