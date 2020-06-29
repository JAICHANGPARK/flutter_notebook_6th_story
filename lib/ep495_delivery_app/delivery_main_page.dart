import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DeliveryMainPage(),
    );
  }
}

class DeliveryMainPage extends StatefulWidget {
  @override
  _DeliveryMainPageState createState() => _DeliveryMainPageState();
}

class _DeliveryMainPageState extends State<DeliveryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            bottom: 120,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 16,
                            left: 16,
                            bottom: 16,
                            right: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Text("⚡️"),
                                    Text(
                                      " 40% DISCOUNT",
                                      style: TextStyle(fontSize: 12, color: Colors.deepOrangeAccent),
                                    )
                                  ],
                                ),
                                Text(
                                  "Get access to",
                                  style: TextStyle(fontSize: 23, color: Colors.indigo, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "premium features",
                                  style: TextStyle(fontSize: 23, color: Colors.indigo, fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 42,
                                      width: 42,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200], borderRadius: BorderRadius.circular(4)),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      height: 42,
                                      width: 42,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200], borderRadius: BorderRadius.circular(4)),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      height: 42,
                                      width: 42,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200], borderRadius: BorderRadius.circular(4)),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 42,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: Colors.deepOrangeAccent, borderRadius: BorderRadius.circular(7)),
                                  child: Center(
                                    child: Text(
                                      "Get access",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: -16,
                            bottom: 0,
                            top: 24,
                            child: Image.network(
                              "https://cdn.pixabay.com/photo/2016/09/27/05/35/letter-1697605_960_720.png",
                              color: Colors.deepOrangeAccent,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              decoration:
                                  BoxDecoration(color: Colors.blueGrey[200], borderRadius: BorderRadius.circular(16)),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: Colors.orangeAccent, borderRadius: BorderRadius.circular(8)),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Dreamwalker",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("3 years in service")
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CircularPercentIndicator(
                                    radius: 48,
                                    percent: 0.9,
                                    progressColor: Colors.blue,
                                    center: Center(
                                      child: Text(
                                        "98%",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: Colors.orangeAccent, borderRadius: BorderRadius.circular(8)),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Dreamwalker",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("3 years in service")
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CircularPercentIndicator(
                                    radius: 48,
                                    percent: 0.92,
                                    progressColor: Colors.blue,
                                    center: Center(
                                      child: Text(
                                        "92%",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: Colors.orangeAccent, borderRadius: BorderRadius.circular(8)),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Dreamwalker",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("3 years in service")
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CircularPercentIndicator(
                                    radius: 48,
                                    percent: 0.91,
                                    progressColor: Colors.blue,
                                    center: Center(
                                      child: Text(
                                        "91%",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: Colors.orangeAccent, borderRadius: BorderRadius.circular(8)),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Dreamwalker",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("3 years in service")
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: CircularPercentIndicator(
                                    radius: 48,
                                    percent: 0.88,
                                    progressColor: Colors.blue,
                                    center: Center(
                                      child: Text(
                                        "88%",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            left: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 48,
                  width: 48,
//                  decoration: BoxDecoration(
//                    color: Colors.red
//                  ),
                  child: Icon(
                    Icons.credit_card,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: 72,
                  width: 100,
                  margin: EdgeInsets.all(7),
                  decoration:
                      BoxDecoration(color: Colors.deepOrangeAccent, borderRadius: BorderRadius.circular(8), boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2), spreadRadius: 2, blurRadius: 4, offset: Offset(0, 4)),
                  ]),
                  child: Center(
                    child: Icon(
                      Icons.apps,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
