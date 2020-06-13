import 'package:flutter/cupertino.dart';
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
          gradient: LinearGradient(colors: [Colors.blueGrey[50], Colors.white]),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "PassHub",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.person_outline)
                        ],
                      ),
                      Container(
                        height: 64,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                  margin: EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  padding: EdgeInsets.only(left: 8),
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey[100],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none, icon: Icon(Icons.style), hintText: "123456789"),
                                  )),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.only(left: 24, right: 0, top: 8, bottom: 8),
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent, borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Divider(),
              Expanded(
                flex: 10,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Order: "),
                                    Text("31559165318"),
                                  ],
                                ),
                                Row(
                                  children:[
                                    Text("3 scans, 1 left"),
                                    Icon(Icons.refresh),
                                    Text("Upgrade")
                                  ],


                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              decoration: ,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Placeholder(),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Placeholder(),
              ),
              Expanded(
                flex: 2,
                child: Placeholder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
