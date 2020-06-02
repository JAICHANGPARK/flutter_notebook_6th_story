import 'package:flutter/material.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/main_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/neumorphic_icon_button.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/colors.dart';
import 'package:provider/provider.dart';


class WaterDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, value, _){
        return Container(
          color: CustomColors.primaryColor,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NeumorphicIconButton(
                  icon: Icon(Icons.arrow_back_ios,
                  size: 18, color: CustomColors.icon,),

                )

              ],
            ),

          ),
        );
      },
    );
  }
}
