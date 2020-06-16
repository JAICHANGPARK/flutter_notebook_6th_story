import 'package:flutter/material.dart';

class LessonsUserPage extends StatefulWidget {
  @override
  _LessonsUserPageState createState() => _LessonsUserPageState();
}

class _LessonsUserPageState extends State<LessonsUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(36),
                    bottomLeft: Radius.circular(36),
                  )),
              child: Stack(
                children: [
                  Positioned(
                    left: -40,
                    bottom: -40,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.indigoAccent[100],
                    ),
                  ),
                  Positioned(
                    right: -80,
                    top: -20,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.indigoAccent[100],
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: 40,
                    child: CircleAvatar(
                      backgroundColor: Colors.orangeAccent,
                      radius: 62,
                    ),
                  ),
                  Positioned(
                    top: 140,
                    right: 32,
                    child: FloatingActionButton(
                      elevation: 12,
                      backgroundColor: Colors.white,
                      onPressed: () {},
                      child: Text(
                        "B2",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 64,
                    bottom: 24,
                    right: 24,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dreamwalker!"),
                        Text("What are we learning today?"),
                        Text("Course"),
                        Text("Business English"),
                        Row(
                          children: [
                            
                          ],
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 240,
              decoration: BoxDecoration(color: Colors.redAccent),
            ),
            Container(
              height: 120,
              decoration: BoxDecoration(color: Colors.blue),
            )
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(36),
          topLeft: Radius.circular(36),
        ),
        child: BottomAppBar(
          elevation: 12,
          child: Container(
            height: 78,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.list,
                      color: Colors.orange,
                      size: 28,
                    ),
                    Text(
                      "Lessons",
                      style: TextStyle(color: Colors.orange, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.threed_rotation,
                      color: Colors.grey,
                      size: 28,
                    ),
                    Text(
                      "Lessons",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.grey,
                      size: 28,
                    ),
                    Text(
                      "Reports",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.surround_sound,
                      color: Colors.grey,
                      size: 28,
                    ),
                    Text(
                      "Listening",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
