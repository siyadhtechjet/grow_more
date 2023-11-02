import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/widgets/height_with4.dart';
import 'package:grow_more/presentation/screens/sign_in_screen.dart/sign_in_screen.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class RecruiterSignInScreen extends StatelessWidget {
   RecruiterSignInScreen({super.key});

  final TextEditingController numberController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Recruiter',
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
                                    image: AssetImage(appImage.recruiter),
                                    fit: BoxFit.contain)),
                          )
                        ],
                      ),
                      SizedBox(height: screenHeight(context) * 0.05),
                       Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: NormalTextField(
                          controller: numberController,
                          hintInside: '+91 | Mobile Number'),
                      ),
                      SizedBox(height: screenHeight(context) * 0.05),
                      InkWell(
                        onTap: () {
                          Get.toNamed('/RecruiterOtpScreen');
                        },
                        child: const SubmitButtonWidget(buttonText: 'Send Code')),
                      SizedBox(height: screenHeight(context) * 0.03),
                      RichText(
                        text:  TextSpan(
                            text: 'By continuing, you agree to our',
                            style: appFonts.f14black,
                            children: <TextSpan>[
                              TextSpan(
                                text: ' terms service',
                                style: appFonts.f14bluegrey
                              ),
                              TextSpan(
                                text: ' and',
                                style: appFonts.f14black
                              ),
                              TextSpan(
                                text: ' Privacy Policy',
                                style: appFonts.f14bluegrey
                              )
                            ]),
                      ),
                      const HeightWith(),
                       const Divider(),
                       const HeightWith1(),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('What a job ? Click Here',style: TextStyle(fontSize: 12)),
                          ],
                        )
                    ]),
              ))),
    );
  }
}

