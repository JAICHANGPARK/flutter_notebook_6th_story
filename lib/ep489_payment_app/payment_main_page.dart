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
                    icon: Icon(Icons.keyboard_arrow_left, color: Colors.white,),
                    onPressed: (){},
                  )
                ],
              ),
            ),
            Expanded(
              flex: 12,
              child: Placeholder(),
            )
          ],
        ),
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
