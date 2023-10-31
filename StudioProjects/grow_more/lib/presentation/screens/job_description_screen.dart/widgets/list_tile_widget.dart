import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class ListTileWidget extends StatelessWidget {
  final String img;
  final String title;
  final String subTitle;
  final Icon? trailing;

  const ListTileWidget({
    Key? key,
    required this.img,
    required this.subTitle,
    required this.title,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 33,
          backgroundImage: AssetImage(img),
        ),
        SizedBox(
          width: screenWidth(context) * 0.04,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: appFonts.f15black,
            ),
            SizedBox(
              width: screenWidth(context) * 0.6,
              child: Text(
                subTitle,
                style: appFonts.f12grey,
              ),
            )
          ],
        ),
        trailing == null
            ? Container()
            : Icon(
                FontAwesomeIcons.angleRight,
                color: appColors.appPrimaryGrey,
              )
      ],
    );
  }
}

