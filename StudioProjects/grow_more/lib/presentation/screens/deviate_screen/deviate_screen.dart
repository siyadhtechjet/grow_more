import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/deviate_screen/widgets/user_button.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class DeviateScreen extends StatelessWidget {
  const DeviateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hey !',
                  style: appFonts.f20black,
                ),
                Text(
                  'Choose your role',
                  style: appFonts.f20black,
                )
              ],
            ),
            SizedBox(
              height: screenHeight(context)*0.1,
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed('/ExploreScreen');
                  },
                  child: UserButton(leading: 'Candidate',userLogo: appImage.candidate)),
                const HeightWith(),
                Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 70),
                  child: Row(children: [
                    Expanded(
                        child: Divider(
                      color: appColors.appPrimaryGrey,
                    )),
                   const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Or",
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: appColors.appPrimaryGrey,
                    )),
                  ]),
                ),
                const HeightWith(),
                InkWell(
                  onTap: () {
                    Get.toNamed('/RecruiterExploreScreen');
                  },
                  child: UserButton(leading: 'Recruiter',userLogo: appImage.recruiter)),
                
              ],
            )
          ],
        ),
      )),
    );
  }
}

