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
                    Icon(Icons.list, color: Colors.orange,
                    size: 38,),
                    Text("Lessons",style: TextStyle(
                      color: Colors.orange,

                    ),)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.threed_rotation, color: Colors.grey,
                      size: 38,),
                    Text("Lessons",style: TextStyle(
                      color: Colors.grey,

                    ),)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.list, color: Colors.grey,
                      size: 38,),
                    Text("Lessons",style: TextStyle(
                      color: Colors.grey,

                    ),)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.surround_sound, color: Colors.grey,
                      size: 38,),
                    Text("Listening",style: TextStyle(
                      color: Colors.grey,

                    ),)
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
















