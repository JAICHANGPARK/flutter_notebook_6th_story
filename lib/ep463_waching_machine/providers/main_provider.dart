import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/enums/enum_mode_status.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/models/mode_item_model.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/timer_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/service_locator.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/washing_machine_controller.dart';

class MainProvider with ChangeNotifier {
  MainProvider() {
    selectMode(nodes.first);
  }

  List<ModeItemModel> nodes = const [
    ModeItemModel(
      name: "Standard",
      minutes: 32,
      color: Color.fromRGBO(61, 111, 252, 1),
    ),
    ModeItemModel(
      name: "Gentle",
      minutes: 24,
      color: Color.fromRGBO(50, 197, 253, 1),
    ),
    ModeItemModel(
      name: "Fast",
      minutes: 12,
      color: Color.fromRGBO(253, 133, 253, 1),
    ),
  ];

  double _waterValue = 680.0;
  ModeStatus _modeStatus = ModeStatus.notStarted;
  ModeItemModel _selectedMode;

  double get waterValue => _waterValue;

  set waterValue(double d) {
    _waterValue = d;
    notifyListeners();
  }

  ModeItemModel get selectedMode => _selectedMode;

  ModeStatus get modeStatus => _modeStatus;

  selectMode(ModeItemModel mode) {
    if (mode == _selectedMode) {
      return;
    }
    if (_modeStatus == ModeStatus.running) {
      return;
    }
    _selectedMode = mode;
    _modeStatus = ModeStatus.notStarted;
    var timerVM = ServiceLocator.get<TimerProvider>();
    timerVM.reset(callNofityListeners: true);
    notifyListeners();
    int sign = Random().nextBool() ? 1 : -1;
    ServiceLocator.get<WashingMachineController>().setAngularVelocity(9.0 * sign, stopAtEnd: true, seconds: 0.6);
  }

  runOrPause(){
    if(selectedMode == null) return;

    var wachingMachineController = ServiceLocator.get<WashingMachineController>();
    var timerProvider = ServiceLocator.get<TimerProvider>();

    if(modeStatus == ModeStatus.running){
      _modeStatus = ModeStatus.paused;
      timerProvider.pause();
      wachingMachineController.setAngularVelocity(0, seconds: 1);
    }else if(modeStatus ==ModeStatus.paused){
      _modeStatus = ModeStatus.running;
      wachingMachineController.setAngularVelocity(-15, seconds: 7);
      timerProvider.resume();
    }else if(modeStatus == ModeStatus.notStarted){
      _modeStatus = ModeStatus.running;
      if(wachingMachineController.hasBalls()){
        wachingMachineController.initializeBalls();
      }
      timerProvider.start(Duration(minutes: selectedMode.minutes));
      Timer.periodic(Duration(seconds: !wachingMachineController.hasBalls() ? 2 : 0), (timer) {
        timer.cancel();
        if(modeStatus != ModeStatus.running) return;
        wachingMachineController.setAngularVelocity(-15, seconds: 7)
      });
      
    }

  }
  stop(){
    var wachingMachineController = ServiceLocator.get<WashingMachineController>();
    var timerProvider = ServiceLocator.get<TimerProvider>();
    wachingMachineController.setAngularVelocity(0, seconds: 3);
    _modeStatus = ModeStatus.notStarted;
    timerProvider.reset(callNofityListeners: true);
    notifyListeners();
  }

}



















