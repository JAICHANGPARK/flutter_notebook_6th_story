import 'package:flutter/material.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/theme_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/service_locator.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/colors.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/consts.dart';
import 'package:provider/provider.dart';

class WashingMachineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context)=> ServiceLocator.get<ThemeProvider>(),
        )
      ],
      child: MaterialApp(
        home: WashingMachineMainPage(),
      ),
    );
  }
}

class WashingMachineMainPage extends StatefulWidget {
  static const margin = EdgeInsets.only(left: GLOBAL_EDGE_MARGIN_VALUE);

  @override
  _WashingMachineMainPageState createState() => _WashingMachineMainPageState();
}

class _WashingMachineMainPageState extends State<WashingMachineMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.primaryColor,
      child: Scaffold(

      ),
    );
  }
}

























