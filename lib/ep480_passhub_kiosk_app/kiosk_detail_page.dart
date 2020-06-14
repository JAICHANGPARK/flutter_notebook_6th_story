import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class KioskDetailPage extends StatefulWidget {
  @override
  _KioskDetailPageState createState() => _KioskDetailPageState();
}

class _KioskDetailPageState extends State<KioskDetailPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
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
                                    color: Colors.grey[300],
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Order: ",
                                        style: TextStyle(color: Colors.blueGrey),
                                      ),
                                      Text(
                                        "31559165318",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "3 scans, 1 left",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Icon(
                                        Icons.refresh,
                                        color: Colors.lightBlueAccent,
                                      ),
                                      Text(
                                        "Upgrade",
                                        style: TextStyle(
                                          color: Colors.lightBlueAccent,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              margin: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueGrey[200]),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Center(
                                child: Text(
                                  "WRONG RESULT?",
                                  style: TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey[50],
                                spreadRadius: 5,
                                blurRadius: 2,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    ),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2016/11/18/17/46/architecture-1836070__340.jpg",
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Museum Of Modern Art (MoMA)",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 16,
                                          color: Colors.blueGrey,
                                        ),
                                        Text(
                                          "Lincoin Center Plaza, New York, NY 10023",
                                          style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Divider(),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 2,
                                                  child: Container(
                                                    margin: EdgeInsets.all(3),
                                                    decoration: BoxDecoration(
                                                      color: Colors.lightBlueAccent[100],
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    child: Center(
                                                      child: Icon(Icons.calendar_today),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 6,
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 4),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                      children: [
                                                        Text(
                                                          "Pur. Date:",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text(
                                                              "Sep 24, 2020",
                                                              style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                            Icon(Icons.arrow_drop_down, size: 12,)
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Text(
                                                    "Exp Date:",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Sep 28, 2020",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(3),
                                            height: 38,
                                            width: 38,
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlueAccent,
                                              borderRadius: BorderRadius.circular(8)
                                            ),
                                          ),
                                          Text("Type:"),
                                          Text("Regular, 4 time visit")
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Placeholder(),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: SpinKitCircle(
                    color: Colors.blueAccent,
                    controller: AnimationController(vsync: this, duration: const Duration(seconds: 100)),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(16),
                        decoration:
                            BoxDecoration(color: Colors.lightBlueAccent, borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            "Get my Pass",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            "Cancel Item",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
