import 'package:flutter/material.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class UserButton extends StatelessWidget {
  final String userLogo;
    final String leading;
  const UserButton({
    super.key,
    required this.leading,
    required this.userLogo
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(
            color: appColors.appPrimaryBlue,
            borderRadius: BorderRadius.circular(12)),
      height: screenHeight(context) * 0.11,
      child: Center(
        child: ListTile(
              leading: Text(leading,style: appFonts.f17white,),
              trailing: Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(userLogo),fit: BoxFit.contain)
                  ),
                )
              ),
            ),
      )
    );
  }
}