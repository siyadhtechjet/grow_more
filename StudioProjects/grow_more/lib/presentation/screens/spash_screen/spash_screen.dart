import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: screenHeight(context) * 0.1,
            ),
            Center(
                child: Container(
              height: screenHeight(context) * 0.4,
              width: screenWidth(context) * 0.8,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(appImage.appLogo))),
            )),
            SizedBox(
              width: screenWidth(context) * 0.8,
              child: InkWell(
                  onTap: () {
                    Get.toNamed('/DeviateScreen');
                  },
                  child:const SubmitButtonWidget(buttonText: 'Get Started',)),
            )
          ],
        ),
      )),
    );
  }
}

class SubmitButtonWidget extends StatelessWidget {
  final String buttonText;
  const SubmitButtonWidget({
    super.key,
    required this.buttonText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
              height: screenHeight(context) * 0.06,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: appColors.appPrimaryBlue),
        child: Center(child: Text(buttonText,style: appFonts.f15white,)));
  }
}
