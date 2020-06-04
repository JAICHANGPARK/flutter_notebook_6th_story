import 'package:flutter/material.dart';


class WaveContainer extends StatefulWidget {
  final Size size;
  final Offset offset;
  final Color color;
  final Duration duration;
  final int sinWidthFraction;

  WaveContainer(this.size, this.offset, this.color, this.duration, this.sinWidthFraction);

  @override
  _WaveContainerState createState() => _WaveContainerState();
}

class _WaveContainerState extends State<WaveContainer> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
