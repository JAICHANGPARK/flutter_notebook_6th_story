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
  PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      initialPage: _pageIndex,
    );
  }

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
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Refund requests",
                              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 24)),
                          Text(
                            "26 refund requests",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                          )
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
                                decoration:
                                    BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.indigo),
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
                                    border: Border.all(color: Colors.white, width: 3)),
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
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 32,
                      color: Colors.grey,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Positioned(
                          left: 24,
                          top: 24,
                          bottom: 16,
                          right: 24,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          right: 16,
                          top: 8,
                          bottom: 24,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.white, boxShadow: [
                              BoxShadow(color: Colors.black.withOpacity(.2), blurRadius: 3, spreadRadius: 2,
                              offset: Offset(
                                0,4
                              )),
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.green,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _pageIndex = 0;
                        _pageController.jumpToPage(_pageIndex);
                      });
                    },
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: _pageIndex == 0 ? Colors.deepPurpleAccent : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.insert_chart,
                          color: _pageIndex == 0 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _pageIndex = 1;
                        _pageController.jumpToPage(_pageIndex);
                      });
                    },
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: _pageIndex == 1 ? Colors.deepPurpleAccent : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.calendar_today,
                          color: _pageIndex == 1 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _pageIndex = 2;
                        _pageController.jumpToPage(_pageIndex);
                      });
                    },
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: _pageIndex == 2 ? Colors.deepPurpleAccent : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.bubble_chart,
                          color: _pageIndex == 2 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _pageIndex = 3;
                        _pageController.jumpToPage(_pageIndex);
                      });
                    },
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: _pageIndex == 3 ? Colors.deepPurpleAccent : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.folder_open,
                          color: _pageIndex == 3 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
