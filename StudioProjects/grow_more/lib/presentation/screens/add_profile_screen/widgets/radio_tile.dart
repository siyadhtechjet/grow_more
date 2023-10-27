import 'package:flutter/material.dart';
import 'package:grow_more/manager/text_style_manager.dart';

class RadioTileWidget extends StatelessWidget {
  final String radioTitle;
  const RadioTileWidget({super.key, required this.radioTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: true,
          groupValue: 1,
          onChanged: (value) {},
        ),
        Text(
          radioTitle,
          style: appFonts.f15grey,
        )
      ],
    );
  }
}
