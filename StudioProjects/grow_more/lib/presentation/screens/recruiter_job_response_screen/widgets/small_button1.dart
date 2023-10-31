import 'package:flutter/material.dart';
import 'package:grow_more/manager/color_manager.dart';

class VerySmallButtonWithRow extends StatelessWidget {
  final IconData contentIcon;
  final String content;
  const VerySmallButtonWithRow(
      {super.key, required this.content, required this.contentIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Icon(
              contentIcon,
              color: appColors.appPrimaryBlue,
              size: 15,
            ),
            Text(
              content,
              style: const TextStyle(color: Colors.blue, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}