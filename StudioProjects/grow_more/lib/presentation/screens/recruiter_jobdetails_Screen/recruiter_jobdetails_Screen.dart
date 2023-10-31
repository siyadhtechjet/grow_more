import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/widgets/height_with4.dart';
import 'package:grow_more/presentation/screens/recruiter_jobdetails_Screen/widgets/company_details_form.dart';
import 'package:grow_more/presentation/screens/recruiter_jobdetails_Screen/widgets/job_description_form.dart';
import 'package:grow_more/presentation/screens/recruiter_jobdetails_Screen/widgets/job_detail_form.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RecruiterJobDetailScreen extends StatefulWidget {
  const RecruiterJobDetailScreen({super.key});

  @override
  State<RecruiterJobDetailScreen> createState() =>
      _RecruiterJobDetailScreenState();
}

class _RecruiterJobDetailScreenState extends State<RecruiterJobDetailScreen> {
  final controller = PageController(viewportFraction: 1, keepPage: false);
  int currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      JobDetailForm(
        buttonFunction: () {
          setState(() {
            controller.nextPage(duration: const Duration(microseconds: 200), curve: Curves.linear);
          });
        },
      ),
      JobDescriptionForm(
        buttonFunction: () {
          setState(() {
            controller.nextPage(duration: const Duration(microseconds: 200), curve: Curves.linear);
          });
        },
      ),
      CompanyDetailsForm(
        buttonFunction: () {
          Get.toNamed('/RecruiterJobScreen');
        },
      )
    ];
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeightWith(),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '1',
                      style: TextStyle(
                          color: appColors.appPrimaryBlue, fontSize: 20)),
                  const TextSpan(
                      text: '/5',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ])),
                const HeightWith(),
                Text(
                  'Job Details',
                  style: appFonts.f20black,
                ),
                const HeightWith(),
                SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  axisDirection: Axis.horizontal,
                  effect: SlideEffect(
                      spacing: 40.0,
                      radius: 3.0,
                      dotWidth: 100.0,
                      dotHeight: 10.0,
                      paintStyle: PaintingStyle.fill,
                      strokeWidth: 0,
                      dotColor: appColors.appPrimaryGrey,
                      activeDotColor: appColors.appPrimaryBlue),
                ),
                const HeightWith4(),
              ],
            ),
          ),
          Expanded(
              child: PageView.builder(
                physics:const NeverScrollableScrollPhysics(),
                  controller: controller,
                  itemCount: pages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        child: pages[index],
                      ),
                    );
                  }))
        ],
      )),
    );
  }
}
