import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Details',
          style: appFonts.f15white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:10),
            child: Row(
              children: [
                IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.circleDown)),
                IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.bookmark)),
            IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.shareNodes)),
              ],
            ),
          )
        ],
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:15,vertical: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenHeight(context)*0.6,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(appImage.myResume),fit: BoxFit.cover)
              ),
            ),
            const Spacer(),
            InkWell(
                onTap: () {
                  Get.toNamed('/DeviateScreen');
                },
                child: Container(
                    height: screenHeight(context) * 0.06,
                    decoration: BoxDecoration(
                      border: Border.all(color: appColors.appPrimaryBlue),
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      'Home Page',
                      style: appFonts.f14bluegrey,
                    ))),
              ),
              
              const HeightWith(),
              const SubmitButtonWidget(buttonText: 'Contact'),
          ],
        ),
      )),
    );
  }
}