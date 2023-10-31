import 'package:flutter/material.dart';
import 'package:grow_more/manager/color_manager.dart';

class SmallElevatedButton extends StatelessWidget {
  final double buttonHeight;
  final double buttonWidth;
  final String content;
  final Color buttonColor;
  const SmallElevatedButton(
      {super.key, required this.buttonColor, required this.content,required this.buttonHeight,required this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(3),
            border: Border.all(color: appColors.appPrimaryBlue)),
        child: Center(
            child: Text(
          content,
          style: TextStyle(
              color: buttonColor == appColors.appPrimaryBlue
                  ? Colors.white
                  : appColors.appPrimaryBlue),
        )));
  }
}