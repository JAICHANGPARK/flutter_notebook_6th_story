

import 'package:flutternotebook6thstory/ep463_waching_machine/providers/theme_provider.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;


class ServiceLocator{
  static init(){
    getIt.registerSingleton<ThemeProvider>(ThemeProvider());
  }

  static T get<T>(){
    return getIt.get<T>();
  }
}