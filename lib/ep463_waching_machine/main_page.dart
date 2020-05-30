import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/enums/enum_mode_status.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/models/mode_item_model.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/main_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/settings_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/theme_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/timer_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/service_locator.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/neumorphic_container.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/neumorphic_icon_button.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/colors.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/consts.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/water_drawer.dart';
import 'package:provider/provider.dart';

class WashingMachineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ServiceLocator.get<ThemeProvider>(),
        ),
        ChangeNotifierProvider(
          create: (context) => ServiceLocator.get<TimerProvider>(),
        ),
        ChangeNotifierProvider(
          create: (context) => ServiceLocator.get<MainProvider>(),
        ),
        ChangeNotifierProvider(
          create: (context) => ServiceLocator.get<SettingsProvider>(),
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
  static const margin = EdgeInsets.only(
    left: GLOBAL_EDGE_MARGIN_VALUE,
  );

  Widget TopBar() {
    return Container(
      margin: EdgeInsets.fromLTRB(GLOBAL_EDGE_MARGIN_VALUE, DRAWER_BUTTON_MARGIN_TOP, 18, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
          TimerPanel(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, value, _) {
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
            drawerScrimColor: Colors.black.withAlpha(50),
            drawer: ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(45), bottomRight: Radius.circular(45)),
              child: Drawer(
                child: WaterDrawer(),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      child: Transform.translate(
                        offset: Offset(100, 120),
                        child: Container(
                          width: 380,
                          height: 380,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: margin,
                          child: Text(
                            "Smart Washing",
                            style: TextStyle(
                              fontSize: 28,
                              color: CustomColors.primaryTextColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Padding(
                          padding: margin,
                          child: Text(
                            "Machine",
                            style: TextStyle(
                              fontSize: 26,
                              color: CustomColors.primaryTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Padding(
                          padding: margin,
                          child: _FunctionButtonsList(),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        _ModeList()
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class TimerPanel extends StatefulWidget {
  @override
  _TimelinePanelState createState() => _TimelinePanelState();
}

class _TimelinePanelState extends State<TimerPanel> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicContainer(
      width: 115,
      height: 52,
      pressed: true,
      border: Border.all(color: CustomColors.timerPanelBorder, width: 2),
      child: Center(
        child: Consumer<TimerProvider>(
          builder: (context, value, _) {
            return Text(
              value.remainingString,
              style: TextStyle(color: CustomColors.secondaryTextColor, letterSpacing: 3, fontSize: 22),
            );
          },
        ),
      ),
    );
  }
}

class _FunctionButtonsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var margin = EdgeInsets.only(bottom: 28);
    return Consumer<MainProvider>(
      builder: (context, value, _) {
        return Column(
          children: [
            Padding(
              padding: margin,
              child: _Indicator(
                color: value?.selectedMode?.color,
                blink: value?.modeStatus == ModeStatus.running,
              ),
            ),
            NeumorphicIconButton(
              margin: margin,
              icon: Icon(Icons.power_settings_new),
              color: CustomColors.icon,
              onTap: () => value.stop(),
            )
          ],
        );
      },
    );
  }
}

class _Indicator extends StatefulWidget {
  final Color color;
  final bool blink;

  _Indicator({this.color, this.blink});

  @override
  __IndicatorState createState() => __IndicatorState();
}

class __IndicatorState extends State<_Indicator> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _colorTween;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    setupAnimation();
  }

  void setupAnimation() {
    Color startColor = CustomColors.primaryTextColor.withAlpha(150);
    Color endColor = CustomColors.primaryTextColor.withAlpha(150);
    if (widget.color != null) startColor = widget.color;

    _controller.reset();
    _colorTween = ColorTween(begin: startColor, end: endColor).animate(_controller);
    if (widget.blink == true) {
      _controller.repeat(reverse: true);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      padding: EdgeInsets.all(8.5),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(50), color: CustomColors.indicatorBackground, boxShadow: [
        BoxShadow(blurRadius: 10, offset: -Offset(6, 6), color: CustomColors.containerShadowTop),
        BoxShadow(blurRadius: 10, offset: Offset(6, 6), color: CustomColors.containerShadowBottom)
      ]),
      child: AnimatedBuilder(
        animation: _colorTween,
        builder: (context, child) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: _colorTween.value),
          );
        },
      ),
    );
  }
}

class _ModeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 205,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: WashingMachineMainPage.margin,
            child: Text(
              "Mode",
              style: TextStyle(fontSize: 23, color: CustomColors.primaryTextColor, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Flexible(
            child: Consumer<MainProvider>(
              builder: (context, value, _){
                return ListView.builder(itemBuilder: (context, index){
                  if(index > value.nodes.length -1) return null;
                  ModeItemModel item = value.nodes[index];
                  return Container();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

class ModeTile extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  final String name;
  final int minutes;
  final bool pressed;
  final Color indicatorColor;
  final GestureTapCallback onTap;
  final bool disabled;

  ModeTile({this.margin, this.name, this.minutes, this.pressed, this.indicatorColor, this.onTap, this.disabled});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}





































