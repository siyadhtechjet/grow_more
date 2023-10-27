import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/utils/util_dimensions.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle:  TextStyle(
      fontSize: 22,
      color:appColors.appPrimaryBlue,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(19),
      border: Border.all(color: appColors.appPrimaryGrey),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight(context) * 0.07,
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/AddProfileScreen');
              },
              child: Text(
                'Enter 6- Digit code',
                style: appFonts.f20black,
              ),
            ),
            Text(
              'Your code is sent to +91 90000 00000',
              style: appFonts.f15grey,
            ),
            SizedBox(
              height: screenHeight(context) * 0.1,
            ),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (value) {},
            ),
            SizedBox(
              height: screenHeight(context) * 0.1,
            ),
            RichText(
                text: TextSpan(
                    text: 'Resend code',
                    style: appFonts.f15grey,
                    children: <TextSpan>[
                  TextSpan(text: ' 28s', style: appFonts.f15black),
                ]))
          ],
        ),
      )),
    );
  }
}
