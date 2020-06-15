import 'package:flutter/material.dart';

class LessonsUserPage extends StatefulWidget {
  @override
  _LessonsUserPageState createState() => _LessonsUserPageState();
}

class _LessonsUserPageState extends State<LessonsUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(36),
          topLeft: Radius.circular(36),
        ),
        child: BottomAppBar(
          elevation: 12,
          child: Container(
            height: 78,
            decoration: BoxDecoration(

            ),
          ),
        ),
      ),
    );
  }
}
