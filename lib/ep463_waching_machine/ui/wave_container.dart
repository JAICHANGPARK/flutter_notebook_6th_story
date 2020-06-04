import 'package:flutter/material.dart';


class WaveContainer extends StatefulWidget {
  final Size size;
  final Offset offset;
  final Color color;
  final Duration duration;
  final int sinWidthFraction;

  WaveContainer({this.size, this.offset, this.color, this.duration
    = const Duration(seconds: 4), this.sinWidthFraction = 3});

  @override
  _WaveContainerState createState() => _WaveContainerState();
}

class _WaveContainerState extends State<WaveContainer> with
TickerProviderStateMixin{
  AnimationController animationController;
  List<Offset> animationListener = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}





















