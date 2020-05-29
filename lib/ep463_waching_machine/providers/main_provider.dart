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
  ];
}