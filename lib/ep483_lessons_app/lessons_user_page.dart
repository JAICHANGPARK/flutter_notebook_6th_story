import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
                      backgroundImage: NetworkImage(
                          "https://avatars0.githubusercontent.com/u/19484515?s=460&u=0ec7b31ff9129826cccc5cd971887a9dd0e0a538&v=4"),
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
                        Text(
                          "Dreamwalker!",
                          style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "What are we learning today?",
                          style: TextStyle(color: Colors.indigoAccent[100], fontSize: 12),
                        ),
                        Spacer(),
                        Text(
                          "Course",
                          style: TextStyle(color: Colors.indigoAccent[700], fontSize: 12),
                        ),
                        Text(
                          "Business English",
                          style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "12/46 Lessons",
                              style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "intermediate",
                              style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 230,
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Your Last Lesson",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 180,
                            margin: EdgeInsets.only(right: 8, bottom: 8, top: 8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Colors.indigo),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[400], blurRadius: 2, spreadRadius: 2, offset: Offset(-2, 4))
                                ]),
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Center(child: Icon(Icons.person_outline, size: 42,)),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: CircularPercentIndicator(radius: 48,
                                          lineWidth: 4,
                                          percent: 0.25,
                                          center: Text("25%"),
                                          progressColor: Colors.indigo,

                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Lesson 5",
                                        style: TextStyle(color: Colors.grey, fontSize: 12),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 8),
                                        child: Text(
                                          "Business\nmeetings",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
            Container(
              height: 120,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.red),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.11),
                    blurRadius: 2,
                    spreadRadius: 3
                  )
                ]
              )
              
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
