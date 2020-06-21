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
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Placeholder(),
          ),
          Expanded(
            flex: 10,
            child: Placeholder(),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 9,
        child: Container(
          height: 72,
        ),
      ),
    );
  }
}
