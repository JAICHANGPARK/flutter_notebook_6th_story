

import 'package:flutter/material.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/washing_machine_controller.dart';

class WashingMachineDrum extends LeafRenderObjectWidget{
  final WashingMachineController controller;


  WashingMachineDrum(this.controller);

  @override
  RenderObject createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    throw UnimplementedError();
  }

}

class _WhirlpoolRenderObject extends RenderBox {
  WashingMachineController _controller;
  WashingMachineController get controller => _controller;
  double _lastTimeStamp = 0.0;

}


















