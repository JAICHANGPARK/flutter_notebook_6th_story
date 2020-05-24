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
              flex: 5,
              child: Container(
                decoration: BoxDecoration(color: Colors.yellow),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.keyboard_arrow_left),
                            Text(
                              "CHECKOUT",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
                                Text(
                                  "01/02",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Information",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                                )
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
                                      decoration: BoxDecoration(
                                          color: Colors.white, shape: BoxShape.circle, border: Border.all()),
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
                                      decoration: BoxDecoration(
                                          color: Colors.white, shape: BoxShape.circle, border: Border.all()),
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
              flex: 2,
              child: Container(
                color: Colors.black,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order summary".toUpperCase(),
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            "2 item in your cart",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$42.00",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.keyboard_arrow_down),
                      onPressed: () {},
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 14,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(8)),
                          child: ExpansionTile(
                            title: Text(
                              "Delivery address".toUpperCase(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2.2,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Payment info".toUpperCase()),
                              Row(
                                children: [
                                  Icon(
                                    Icons.lock,
                                    size: 13,
                                  ),
                                  Text("100% secure payment")
                                ],
                              ),
                              Container(
                                height: 42,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Placeholder(),
                                    ),
                                    Expanded(
                                      child: Placeholder(),
                                    ),
                                  ],
                                ),
                              ),
                              Text.rich(TextSpan(
                                children:[
                                  TextSpan(
                                    text: "Name On Card",
                                  ),
                                  TextSpan(
                                    text: "*",
                                    style: TextStyle(
                                      color: Colors.red
                                    )
                                  )
                                ]
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.pink[600],
                child: Center(
                  child: Text(
                    "NEXT STEP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
