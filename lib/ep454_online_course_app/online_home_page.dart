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
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text("Welcome back, Dreamwalker!", style: GoogleFonts.oswald(
                        fontSize: 18,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w300
                      ),),
                      Text("Continue learning", style: GoogleFonts.oxygen(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,letterSpacing: 2,
                        color: Colors.blueGrey,
                      ),),
                    SizedBox(height: 8,),
                    Container(
                      margin: EdgeInsets.only(top: 16, bottom: 16),
                      height: 140,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container()
                        ],
                      ),
                    )
                  ],
                ),
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


















