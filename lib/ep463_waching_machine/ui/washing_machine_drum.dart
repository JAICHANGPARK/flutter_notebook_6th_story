import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/drum_phsic.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/washing_machine_controller.dart';

import 'drum_physic_renderer.dart';

class WashingMachineDrum extends LeafRenderObjectWidget {
  final WashingMachineController controller;

  WashingMachineDrum(this.controller);

  @override
  RenderObject createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    return _WhirlpoolRenderObject()..controller = controller;
  }
}

class _WhirlpoolRenderObject extends RenderBox {
  DrumPhysicRenderer _physicRenderer = DrumPhysicRenderer(ppm: DrumPhysic.PPM);
  WashingMachineController _controller;

  WashingMachineController get controller => _controller;
  double _lastTimeStamp = 0.0;

  set controller(WashingMachineController v) {
    if (_controller == v) return;
    _controller = v;
    _controller.onNeedPaint = markNeedsPaint;
    markNeedsPaint();
    markNeedsLayout();
    SchedulerBinding.instance.scheduleFrameCallback(frame);


  }
  frame(Duration timeStamp){

  }
}












