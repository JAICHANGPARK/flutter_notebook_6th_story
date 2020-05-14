import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                child: Text('CHAT', style: GoogleFonts.anton(
                  letterSpacing: 2,
                  fontSize: 20
                ),),
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: 32,
            child: Row(
              children: [
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            spreadRadius: 2,
                            offset: Offset(0,2)
                        )
                      ]
                  ),
                  child: Center(
                    child: AnimatedIcon(progress: null,
                      
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

























