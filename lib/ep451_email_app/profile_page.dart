import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2, offset: Offset(0, 2))]),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      isClicked = !isClicked;
                      isClicked ? controller.forward() : controller.reverse();
                    },
                    icon: AnimatedIcon(
                      progress: controller,
                      icon: AnimatedIcons.menu_close,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Inbox",
                  style: GoogleFonts.anton(fontSize: 24, letterSpacing: 1),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
