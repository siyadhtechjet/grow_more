import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Candidate',
                          style: appFonts.f20black,
                        ),
                        Text(
                          'Singn-In/Signup',
                          style: appFonts.f20black,
                        ),
                        const HeightWith(),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(appImage.candidate),
                                  fit: BoxFit.contain)),
                        )
                      ],
                    ),
                    SizedBox(height: screenHeight(context) * 0.05),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20),
                      child: NormalTextField(hintInside: '+91 | Mobile Number'),
                    ),
                    SizedBox(height: screenHeight(context) * 0.05),
                    InkWell(
                      onTap: () {
                        Get.toNamed('/OtpScreen');
                      },
                      child: const SubmitButtonWidget(buttonText: 'Send Code')),
                    SizedBox(height: screenHeight(context) * 0.03),
                    RichText(
                      text:  TextSpan(
                          text: 'By continuing, you agree to our',
                          style: appFonts.f12black,
                          children: <TextSpan>[
                            TextSpan(
                              text: ' terms service',
                              style: appFonts.f12bluegrey
                            ),
                            TextSpan(
                              text: ' and',
                              style: appFonts.f12black
                            ),
                            TextSpan(
                              text: ' Privacy Policy',
                              style: appFonts.f12bluegrey
                            )
                          ]),
                    )
                  ]))),
    );
  }
}

class NormalTextField extends StatelessWidget {
  final String hintInside;
  const NormalTextField({
    super.key,
    required this.hintInside
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: appColors.appPrimaryGrey)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: appColors.appPrimaryGrey)),
          hintText: hintInside,
          hintStyle:
              TextStyle(color: appColors.appPrimaryGrey)),
    );
  }
}
