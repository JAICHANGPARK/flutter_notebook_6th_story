import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/enums/enum_mode_status.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/models/mode_item_model.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/timer_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/service_locator.dart';



class MainProvider with ChangeNotifier{
  MainProvider(){

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
  set waterValue(double d){
    _waterValue = d;
    notifyListeners();
  }

  ModeItemModel get  selectedMode=>_selectedMode;
  ModeStatus get modeStatus => _modeStatus;

  selectMode(ModeItemModel mode){
    if(mode == _selectedMode){
      return;
    }
    if(_modeStatus == ModeStatus.running){
      return ;
    }
    _selectedMode = mode;
    _modeStatus = ModeStatus.notStarted;
    var timerVM = ServiceLocator.get<TimerProvider>();
    timerVM.reset(callNofityListeners: true);
    notifyListeners();
    
  }
}





















