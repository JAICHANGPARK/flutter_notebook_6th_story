import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/drum_phsic.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/washing_machine_controller.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/colors.dart';

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

  frame(Duration timeStamp) {
    final double t = timeStamp.inMicroseconds / Duration.microsecondsPerMillisecond / 1000.0;
    if (_lastTimeStamp == 0) {
      _lastTimeStamp = t;
      SchedulerBinding.instance.scheduleFrameCallback(frame);
      return;
    }
    double elapsed = (t - _lastTimeStamp).clamp(0.0, 1.0);
    _lastTimeStamp = t;
    controller?.step(elapsed);
    controller.redraw();
    SchedulerBinding.instance.scheduleFrameCallback(frame);
  }

  _drawWhirlpool(PaintingContext context, Offset offset) {
    if (controller.devMode != true) {
      context.pushLayer(
          ColorFilterLayer(
              colorFilter: ColorFilter.matrix([1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 20, -1200])),
          (context, offset) {
        return context.pushLayer(
            ImageFilterLayer(
              imageFilter: ImageFilter.blur(sigmaX: 13, sigmaY: 13),
            ), (context, offset) {
          return _drawBalls(context, offset);
        }, offset);
      }, offset);
    } else {
      _drawBalls(context, offset);
    }
  }

  _drawBalls(PaintingContext context, Offset offset) async {
    Canvas canvas = context.canvas;
    var rect = Rect.fromLTWH(
        controller.physic.origin.dx - controller.physic.radius,
        controller.physic.origin.dy - controller.physic.radius,
        controller.physic.radius * 2,
        controller.physic.radius * 2);
    canvas.save();
    canvas.clipPath(Path()..addOval(rect));
    controller.physic.balls.forEach((element) {
      _physicRenderer.renderBody(canvas, element);
    });
    canvas.restore();
  }

  _drawDrum(PaintingContext context, Offset offset) {
    Canvas canvas = context.canvas;
    canvas.drawRect(context.estimatedBounds, Paint()..color = CustomColors.drumBackground);
    Path washingMachineRibForeground = _createDrumPath(3, 10, context.estimatedBounds);
    Path washingMachineRibBackground = _createDrumPath(3, 10, context.estimatedBounds, convexity: 30);
    canvas.save();
    canvas.translate(context.estimatedBounds.center.dx, context.estimatedBounds.center.dy);
    canvas.rotate(controller.drumAngle);
    canvas.scale(1.05);
    canvas.translate(-context.estimatedBounds.center.dx, -context.estimatedBounds.center.dy);
    canvas.drawPath(
        washingMachineRibBackground,
        Paint()
          ..color = CustomColors.drumRibBackground
          ..style = PaintingStyle.fill);

    canvas.drawPath(
        washingMachineRibForeground,
        Paint()
          ..color = CustomColors.drumRibForeground
          ..style = PaintingStyle.fill);
    canvas.restore();
    canvas.drawRect(
        context.estimatedBounds,
        Paint()
          ..shader = RadialGradient(colors: CustomColors.drumInnerShadowColors, stops: [0.85, 1])
              .createShader(context.estimatedBounds));
  }

  Path _createDrumPath(int segment, double angleOffset, Rect bounds, {double convexity = 0.0}) {
    Offset center = bounds.center;
    double startAngel = 360.0 - 90.0;
    double stepRotationAngel = 360 / segment;
    Path basePath = _createDrumBasePath(segment, startAngel, angleOffset, bounds, convexity: convexity);
  }

  Path _createDrumBasePath(int segments, double startAngel, double angelOffset, Rect bounds,
      {double convexity = 0.0}) {}
}
