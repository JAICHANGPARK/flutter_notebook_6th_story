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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
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
                        },
                        icon: Icon(
                          Icons.clear
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Profile",
                      style: GoogleFonts.anton(fontSize: 24, letterSpacing: 1),
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Container(
                height: 280,
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage("https://www.manuelalangella.com/wp-content/uploads/2020/03/Asset-41.png"),

                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Dreamwalker",style: GoogleFonts.anton(
                        fontSize: 20,
                        letterSpacing: 2
                      ),),
                      Container(
                        height: 32,
                        width: 84,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(1,4)
                            )
                          ]
                        ),
                        child: Center(
                          child: Text("Following",style: GoogleFonts.montserrat(),),
                        ),
                      )
                    ],
                  ),
                  Text("Developer")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Text("Attachment",style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold
              ),),
            ),

          ],
        ),
      ),
    );
  }
}
















