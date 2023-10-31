import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/applied_candidate_profile_screen/widgets/icon_text_row.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/widgets/height_with4.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

List<String> skills = ['Figma', 'Adobe XD', 'Design Thinking'];

class AppliedCandidateProfileScreen extends StatelessWidget {
  const AppliedCandidateProfileScreen({super.key});

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
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.shareNodes)),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeightWith(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hamanth Rao',
                    style: appFonts.f20black,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(appImage.proPic),
                  )
                ],
              ),
              const HeightWith1(),
              const Divider(),
              const HeightWith(),
              const Row(
                children: [
                  IconTextRow(
                      content: ' 2 years  ',
                      contentIcon: FontAwesomeIcons.clock),
                  IconTextRow(
                      content: ' M-tech  ',
                      contentIcon: FontAwesomeIcons.clock),
                  IconTextRow(
                      content: ' 28 years old  ',
                      contentIcon: FontAwesomeIcons.clock)
                ],
              ),
              const HeightWith(),
              Text(
                'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim adLorem ipsum dolor sit amet.',
                style: appFonts.f12black,
              ),
              const HeightWith(),
              Text(
                'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim adLorem ipsum dolor sit amet.',
                style: appFonts.f12black,
              ),
              const HeightWith4(),
              const Divider(),
              const HeightWith(),
              const Text('Job Preference'),
              const HeightWith(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ux Designer',
                        style: appFonts.f15blackbold,
                      ),
                      Text(
                        'Bangalore,KA',
                        style: appFonts.f15grey,
                      ),
                    ],
                  ),
                  Text('Rs 3-4 LPA', style: appFonts.f15grey),
                ],
              ),
              const HeightWith(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: screenWidth(context) * 0.6,
                          child: Text(
                            'BVB College Of Engineering and technology ,Bangalore',
                            style: appFonts.f15blackbold,
                          )),
                      SizedBox(
                          width: screenWidth(context) * 0.7,
                          child: Text(
                            'Post Graduation- MTech- Civil',
                            style: appFonts.f12grey,
                          )),
                      SizedBox(
                          width: screenWidth(context) * 0.7,
                          child: Text(
                            'Construction Technology and Project Management',
                            style: appFonts.f12grey,
                          )),
                    ],
                  ),
                  Text('Rs 3-4 LPA', style: appFonts.f12grey),
                ],
              ),
              const HeightWith4(),
              const Text('Skills'),
              const HeightWith(),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  children: skills
                      .map((item) => Card(
                              child: SizedBox(
                                  child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              item,
                              style: appFonts.f12grey,
                            ),
                          ))))
                      .toList()
                      .cast<Widget>(),
                ),
              ),
              const HeightWith4(),
              const Text('Portfolio Link'),
              const HeightWith(),
              const Row(
                children: [
                  Icon(
                    FontAwesomeIcons.globe,
                    size: 17,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'http:/www.hello_world.com',
                    style: TextStyle(decoration: TextDecoration.underline),
                  )
                ],
              ),
              const HeightWith4(),
              InkWell(
                onTap: () {
                  Get.toNamed('/ResumeScreen');
                },
                child: Container(
                    height: screenHeight(context) * 0.06,
                    decoration: BoxDecoration(
                      border: Border.all(color: appColors.appPrimaryBlue),
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white),
                    child: Center(
                        child: Text(
                      'View Resume',
                      style: appFonts.f14bluegrey,
                    ))),
              ),
              const HeightWith(),
              const SubmitButtonWidget(buttonText: 'Contact'),
              const HeightWith4()
            ],
          ),
        ),
      )),
    );
  }
}
