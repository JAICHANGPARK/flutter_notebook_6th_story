import 'package:flutter/material.dart';

class EmailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) =>  EmailListPage(),
      },
    );
  }
}

class EmailListPage extends StatefulWidget {
  @override
  _EmailListPageState createState() => _EmailListPageState();
}

class _EmailListPageState extends State<EmailListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 24,
            bottom: 24,
            child: Container(
              height: 84,
              width: 84,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 3,
                    offset: Offset(0,2)
                  )
                ]
              ),
              child: Center(
                child: Text('CHAT', style: ,),
              ),


            ),
          )
        ],
      ),
    );
  }
}

























