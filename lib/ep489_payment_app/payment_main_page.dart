import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentMainPage extends StatefulWidget {
  @override
  _PaymentMainPageState createState() => _PaymentMainPageState();
}

class _PaymentMainPageState extends State<PaymentMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    "Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 12,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    )),
                child: ListView(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.all(16),
                      height: 64,
                      decoration: BoxDecoration(color: Colors.orange[100], borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(TextSpan(children: [
                                  TextSpan(
                                    text: "Deliver at : ",
                                  ),
                                  TextSpan(
                                      text: "Home",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ))
                                ])),
                                Text(
                                  "1633 Hampton Meadows, Lexington",
                                )
                              ],
                            ),
                          ),
                          Center(
                            child: Text(
                              "Change",
                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13, color: Colors.red),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 260,
                      decoration: BoxDecoration(
                        color: Colors.blue
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child:Placeholder(),
                          ),
                          Expanded(
                            child:Placeholder(),
                          ),
                          Expanded(
                            child:Placeholder(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 64,
                      margin: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(16)
                      ),padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Icon(Icons.local_play, color: Colors.red,),
                          SizedBox(width: 12,),
                          Text("Apply a promo code", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),),
                          Spacer(),
                          Text("Apply", style: TextStyle(
                            color: Colors.red
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.green
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.all(16),
                      height: 64,
                      decoration: BoxDecoration(color: Colors.orange[100], borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.card_giftcard,
                            color: Colors.red,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(TextSpan(children: [
                                  TextSpan(
                                    text: "Deliver at : ",
                                  ),
                                  TextSpan(
                                      text: "Home",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ))
                                ])),
                                Text(
                                  "Apple Pay",
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Center(
                            child: Text(
                              "Change",
                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13, color: Colors.red),
                            ),
                          )
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
      bottomNavigationBar: BottomAppBar(
        elevation: 25,
        child: Container(
          height: 72,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: Text("Payment"),
                        ));
              },
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                  color: Colors.orange[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "4 ITEMS",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text.rich(TextSpan(children: [
                            TextSpan(text: "\$ ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                            TextSpan(
                                text: "26.00 ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(text: "Incl taxes", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12))
                          ]))
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Pay",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.play_arrow)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
