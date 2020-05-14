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
              
            ),
          )
        ],
      ),
    );
  }
}

























