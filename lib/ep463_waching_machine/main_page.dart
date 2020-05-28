import 'package:flutter/material.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/theme_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/service_locator.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/neumorphic_icon_button.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/colors.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/consts.dart';
import 'package:provider/provider.dart';

class WashingMachineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ServiceLocator.get<ThemeProvider>(),
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
  Widget TopBar() {
    return Container(
      margin: EdgeInsets.fromLTRB(GLOBAL_EDGE_MARGIN_VALUE, DRAWER_BUTTON_MARGIN_TOP, 18, 10),
      child: Row(
        children: [
          NeumorphicIconButton(
            icon: Icon(
              Icons.settings,
              color: CustomColors.icon,
            ),
            onTap: () {
              showModalBottomSheet(
                  context: context, backgroundColor: Colors.transparent, builder: (context) => Container());
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.primaryColor,
      child: Scaffold(
        backgroundColor: CustomColors.primaryColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: SafeArea(
            child: TopBar(),
          ),
        ),
      ),
    );
  }
}






























