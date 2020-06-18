import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DmmApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DmmMainPage(),
    );
  }
}
class DmmMainPage extends StatefulWidget {
  @override
  _DmmMainPageState createState() => _DmmMainPageState();
}

class _DmmMainPageState extends State<DmmMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Refund requests", style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 24

                          )),
                          Text("26 refund requests", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                          ),)
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Stack(
                          children: [
                            Positioned(
                              left: 8,
                              top: 4,
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.indigo
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white,
                                  width: 3)
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
            ),
            Expanded(
              flex: 5,
              child: Placeholder(),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}













