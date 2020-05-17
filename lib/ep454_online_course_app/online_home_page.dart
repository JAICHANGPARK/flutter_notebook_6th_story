import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnlineHomePage extends StatefulWidget {
  @override
  _OnlineHomePageState createState() => _OnlineHomePageState();
}

class _OnlineHomePageState extends State<OnlineHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.menu), Icon(Icons.search)],
                  ),
                )),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text("Welcome back, Dreamwalker!", style: GoogleFonts.oswald(),),
                    Text("Continue learning", style: GoogleFonts.oswald(),)
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}


















