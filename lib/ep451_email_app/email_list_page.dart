import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => EmailListPage(),
      },
    );
  }
}

class EmailListPage extends StatefulWidget {
  @override
  _EmailListPageState createState() => _EmailListPageState();
}

class _EmailListPageState extends State<EmailListPage> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> _animation;
  bool isClicked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(accentColor: Colors.grey[100]),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                top: 100,
                bottom: 0,
                child: ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Slidable(
                      actionPane: SlidableBehindActionPane(),
                      secondaryActions: [
                        IconSlideAction(
                          color: Colors.grey,
                          caption: "DELETE",
                          icon: Icons.clear,
                          onTap: () {
                            print("deleted");
                          },
                        )
                      ],
                      child: Container(
                        height: 100,
                        padding: EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 16),
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 3,
                              child: CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Dreamwalker",style: GoogleFonts.anton(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.2
                                      ),),
                                      Text("${DateTime.now().hour}:${DateTime.now().minute}")
                                    ],
                                  ),
                                  Text("Introducing Flutter Development Skill",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                  ),),
                                  Text("Dreamwalker is the Dream add the Walker",style: GoogleFonts.montserrat(
                                    color: Colors.grey,fontSize: 12
                                  ),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })),
            Positioned(
              right: 24,
              bottom: 24,
              child: Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 3, offset: Offset(0, 2))]),
                child: Center(
                  child: Text(
                    'CHAT',
                    style: GoogleFonts.anton(letterSpacing: 2, fontSize: 20),
                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
