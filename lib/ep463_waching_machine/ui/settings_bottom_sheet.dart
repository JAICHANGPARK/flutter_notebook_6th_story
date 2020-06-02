import 'package:flutter/material.dart';
import 'package:flutternotebook6thstory/ep463_waching_machine/utils/colors.dart';


class SettingsBottomSheet extends StatefulWidget {
  @override
  _SettingsBottomSheetState createState() => _SettingsBottomSheetState();
}

class _SettingsBottomSheetState extends State<SettingsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: CustomColors.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(48),
          topRight: Radius.circular(48)
        ),
      ),
      child: Row(
        children: [
          
        ],
      ),
    );
  }
}
