import 'package:flutter/material.dart';
import 'package:grow_more/manager/text_style_manager.dart';

class IconTextRow extends StatelessWidget {
  final String content;
  final IconData contentIcon;
  const IconTextRow(
      {super.key, required this.content, required this.contentIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          contentIcon,
          color: Colors.grey,
          size: 13,
        ),
        Text(
          content,
          style: appFonts.f12grey,
        ),
      ],
    );
  }
}