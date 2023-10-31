import 'package:flutter/material.dart';
import 'package:grow_more/manager/color_manager.dart';

class VerySmallButtonWithRow2 extends StatelessWidget {
  final IconData contentIcon;
  final String content;
  const VerySmallButtonWithRow2(
      {super.key, required this.content, required this.contentIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:  Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            Icon(
              contentIcon,
              color: appColors.appPrimaryBlue,
              size: 12,
            ),
            Text(
              content,
              style:  TextStyle(color: appColors.appPrimaryBlue, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}