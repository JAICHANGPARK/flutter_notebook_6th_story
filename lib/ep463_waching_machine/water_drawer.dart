import 'package:flutter/material.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/providers/main_provider.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/ui/neumorphic_icon_button.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/colors.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/consts.dart';
import 'package:provider/provider.dart';

class WaterDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, value, _) {
        return Container(
          color: CustomColors.primaryColor,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: GLOBAL_EDGE_MARGIN_VALUE, top: DRAWER_BUTTON_MARGIN_TOP),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NeumorphicIconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                      color: CustomColors.icon,
                    ),
                    onTap: () => Navigator.of(context).pop(),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
