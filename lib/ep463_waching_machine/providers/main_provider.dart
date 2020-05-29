import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/models/mode_item_model.dart';



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
}





















