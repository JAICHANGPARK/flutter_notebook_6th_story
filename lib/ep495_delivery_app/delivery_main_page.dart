import 'package:flutter/material.dart';


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
                )
              ),
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  SizedBox(height: 16,),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Expanded(
                    flex: 3,
                    child: Placeholder(),
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
                  child: Icon(Icons.credit_card, color: Colors.grey,),
                ),
                Container(
                  height: 72,
                  width: 100,
                  margin: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 4)
                      ),
                    ]
                  ),
                  child: Center(
                    child: Icon(Icons.apps, color: Colors.white,),
                  ),
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8)
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}

































