import 'package:flutternotebook6thstory/ep463_waching_machine/providers/main_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/settings_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/theme_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/timer_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/washing_machine_controller.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator {
  static init() {
    getIt.registerSingleton<ThemeProvider>(ThemeProvider());
    getIt.registerSingleton<TimerProvider>(TimerProvider());
    getIt.registerSingleton<WashingMachineController>(WashingMachineController(ballsCount: 16));
    getIt.registerSingleton<SettingsProvider>(SettingsProvider());
    getIt.registerSingleton<MainProvider>(MainProvider());
  }

  static T get<T>() {
    return getIt.get<T>();
  }
}
