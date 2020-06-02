import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/settings_provider.dart';

import '../service_locator.dart';
import 'drum_phsic.dart';

typedef PaintCallback();

class WashingMachineController {
  WashingMachineController({
    @required this.ballsCount,
  }) : physic = DrumPhysic(ballsCount: ballsCount);

  final int ballsCount;
  final DrumPhysic physic;

  double get drumAngle => physic?.whirlpoolCoreBody?.getAngle() ?? 0.0;

  double get radius => _radius;

  bool get devMode => ServiceLocator.get<SettingsProvider>()?.devMode;
  PaintCallback onNeedPaint;

  double _radius;
  bool _initalized = false;

  initialize({double radius}) {
    assert(_initalized != true);
    _initalized = true;

    _radius = radius;
    physic.initialize(radius);
  }

  initializeBalls() {
    physic.initializeBalls();
  }

  hasBalls() {
    return physic.balls.length > 0;
  }

  step(double elapsed) {
    if (_initalized == false) {
      return;
    }

    physic.step(elapsed);
  }

  setAngularVelocity(
    double value, {
    double seconds = 0.0,
    bool stopAtEnd = false,
  }) {
    if (_initalized != true) {
      return;
    }

    physic.setAngularVelocity(value, seconds: seconds, stopAtEnd: stopAtEnd);
  }

  redraw() {
    if (onNeedPaint != null) {
      onNeedPaint();
    }
  }
}
