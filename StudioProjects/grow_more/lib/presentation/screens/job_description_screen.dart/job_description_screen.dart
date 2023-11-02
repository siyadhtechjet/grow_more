import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/job_description_screen.dart/widgets/bubble_container.dart';
import 'package:grow_more/presentation/screens/job_description_screen.dart/widgets/bullet_point.dart';
import 'package:grow_more/presentation/screens/job_description_screen.dart/widgets/list_tile_widget.dart';
import 'package:grow_more/presentation/screens/job_description_screen.dart/widgets/small_elevated_button.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/widgets/height_with4.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/widgets/location_year_row.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/presentation/widgets/alert_widget.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class JobDescriptionScreen extends StatelessWidget {
  const JobDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.house,
              size: 20,
            )),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.shareNodes,
                size: 20,
              )),
        )
      ]),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Builder(builder: (context) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeightWith4(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Designer',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '2-3 LPA',
                      style: TextStyle(
                          color: Colors.deepOrangeAccent, fontSize: 13),
                    )
                  ],
                ),
                const HeightWith1(),
                const LocationYearRow(),
                const HeightWith1(),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.graduationCap,
                        color: appColors.appPrimaryGrey, size: 15),
                    Text(' Graduation/Diplomas', style: appFonts.f15grey),
                  ],
                ),
                const HeightWith1(),
                const Divider(),
                const HeightWith1(),
                ListTileWidget(
                  img: appImage.proPic,
                  subTitle: 'Karishma Patil',
                  title: 'Hiring Manager',
                ),
                const HeightWith(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset(appImage.tickIcon)),
                      Text(
                        '   Verified by Growmore',
                        style: appFonts.f15black,
                      )
                    ],
                  ),
                ),
                const HeightWith1(),
                const Divider(),
                const HeightWith(),
                const SimpleHead(content: 'Skills'),
                const HeightWith(),
                SizedBox(
                  height: screenHeight(context) * 0.04,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      BubbleContainer(
                        content: 'figma',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      BubbleContainer(
                        content: 'UI/UX',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      BubbleContainer(
                        content: 'flutter',
                      )
                    ],
                  ),
                ),
                const HeightWith(),
                const SimpleHead(content: 'Education'),
                const HeightWith(),
                const BubbleContainer(content: 'Bachelor Degree'),
                const HeightWith(),
                const SimpleHead(content: 'Job Description'),
                const HeightWith(),
                const SizedBox(
                    child: Text(
                        'We are seeking a talented and creative Product Designer (UI/UX) to join our dynamic team. In this role, you will be at the forefront of crafting exceptional user experiences and visually appealing interfaces for our products.')),
                const HeightWith(),
                const SimpleHead(content: 'Responsibilities :'),
                const HeightWith(),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    child: Column(
                      children: [
                        BulletPoints(
                            content:
                                'Collaborate closely with cross-functional teams to understand user needs, product goals, and project requirements.'),
                        BulletPoints(
                            content:
                                'Create wireframes, prototypes, and high-fidelity designs that align with user-centered design principles.'),
                        BulletPoints(
                            content:
                                'Conduct user testing and gather feedback to iterate and refine designs.'),
                        BulletPoints(
                          content:
                              'Ensure design consistency across various platforms and devices.',
                        ),
                        BulletPoints(
                            content:
                                'Stay up-to-date with industry trends and best practices to drive innovation.')
                      ],
                    ),
                  ),
                ),
                const HeightWith1(),
                const Divider(),
                const HeightWith1(),
                ListTileWidget(
                  img: appImage.paperPlane,
                  subTitle: '20-99 Employes.Information technology',
                  title: 'PaperPlane Pvt Ltd',
                  trailing: const Icon(FontAwesomeIcons.angleRight),
                ),
                const HeightWith1(),
                const Divider(),
                const HeightWith1(),
                Container(
                  height: screenHeight(context) * 0.15,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(appImage.map), fit: BoxFit.cover)),
                ),
                const HeightWith4(),
                InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertBoxWidget(
                            mainContent: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.width * 0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                appImage.alertTick))),
                                  ),
                                  const HeightWith4(),
                                  Text(
                                    'Job Application Submitted',
                                    style: appFonts.f15black,
                                  ),
                                  const HeightWith(),
                                  Text(
                                    'Your application for the Product Designer position has been successfully submitted',
                                    style: appFonts.f15grey,
                                    textAlign: TextAlign.center,
                                  ),
                                  const HeightWith(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Get.toNamed('/RecommentJobScreen');
                                        },
                                        child:  SmallElevatedButton(
                                          buttonWidth: screenWidth(context) * 0.32,
                                          buttonHeight: screenHeight(context)*0.05,
                                          content: 'My Jobs',
                                          buttonColor: Colors.white,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.toNamed('/DeviateScreen');
                                        },
                                        child: SmallElevatedButton(
                                          buttonWidth: screenWidth(context) * 0.32,
                                          buttonHeight: screenHeight(context)*0.05,
                                          content: 'Home',
                                          buttonColor: appColors.appPrimaryBlue,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const SubmitButtonWidget(buttonText: 'Apply Now')),
                const HeightWith4()
              ],
            ),
          );
        }),
      )),
    );
  }
}



