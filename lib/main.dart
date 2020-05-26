import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/service_locator.dart';
import 'ep463_waching_machine/main_page.dart';

void main() {
  ServiceLocator.init();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(WashingMachineApp());

}
