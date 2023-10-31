import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grow_more/core/models/job_model.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';

class LocationYearRow extends StatelessWidget {
  const LocationYearRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.locationDot,color: appColors.appPrimaryGrey,size: 15,),
        Text(' ${jobDatas[0].jobLocation} ',
            style: appFonts.f15grey),
        Icon(FontAwesomeIcons.clock,color: appColors.appPrimaryGrey,size: 15),
        Text(' ${jobDatas[0].jobExperience} years',
            style: appFonts.f15grey),
      ],
    );
  }
}