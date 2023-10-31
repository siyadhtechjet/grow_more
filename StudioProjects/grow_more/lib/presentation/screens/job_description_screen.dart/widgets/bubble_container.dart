import 'package:flutter/material.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class BubbleContainer extends StatelessWidget {
  final String content;
  const BubbleContainer({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.04,
      decoration: BoxDecoration(
          color: appColors.appPrimaryGreyLight,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          content,
          style: appFonts.f15grey,
        ),
      ),
    );
  }
}
