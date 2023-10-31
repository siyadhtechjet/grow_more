import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/core/models/profile_model.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/widgets/height_with4.dart';
import 'package:grow_more/presentation/screens/recruiter_job_response_screen/widgets/small_button1.dart';
import 'package:grow_more/presentation/screens/recruiter_job_response_screen/widgets/small_button2.dart';
import 'package:grow_more/presentation/screens/recruiter_job_response_screen/widgets/tabs.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/presentation/widgets/alert_widget.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

List<ProfileModel> profiledatas = [
  ProfileModel(img: appImage.pro1, name: 'Hemanth Rao'),
  ProfileModel(img: appImage.pro2, name: 'Soumya S'),
  ProfileModel(img: appImage.proPic, name: 'Suhail K')
];

class RecruiterJobResponsesScreen extends StatelessWidget {
  const RecruiterJobResponsesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Product Designer',
            style: appFonts.f15white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.filePen)),
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, screenHeight(context) * 0.08),
            child: Container(
              height: screenHeight(context) * 0.08,
              color: Colors.white,
              child: const MyTabs(),
            ),
          ),
        ),
        body: SafeArea(
            child: TabBarView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const HeightWith(),
                Container(
                  height: screenHeight(context) * 0.06,
                  decoration: BoxDecoration(
                      color: appColors.appPrimaryGreyLight,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: '  Location, Experience',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
                const HeightWith(),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const VerySmallButtonWithRow(
                        content: ' Filter',
                        contentIcon: FontAwesomeIcons.filter),
                    InkWell(
                      onTap: () {
                       showDialog(context: context, builder: (context) {
                        return AlertBoxWidget(mainContent: 
                         SizedBox(
                          height: MediaQuery.of(context).size.height * 0.26,
                           child: Center(
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Sort by',style: appFonts.f20black,),
                                const HeightWith(),
                                Text('Active Candidates',style: appFonts.f15black,),
                                const HeightWith1(),
                                Text('Location',style: appFonts.f15black,),
                                const HeightWith1(),
                                Text('Recommended Candidates',style: appFonts.f15black,),
                                const HeightWith(),
                                const SubmitButtonWidget(buttonText: 'Submit')
                              ],
                             ),
                           ),
                         )
                         );
                       },);
                      },
                      child:const VerySmallButtonWithRow(
                          content: ' Sort by',
                          contentIcon: FontAwesomeIcons.arrowDownShortWide),
                    ),
                  ],
                ),
                const HeightWith(),
                Expanded(
                  child: ListView.separated(
                    itemCount: profiledatas.length,
                    separatorBuilder: (context, index) => SizedBox(
                      height: screenHeight(context) * 0.03,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.toNamed('/AppliedCandidateProfileScreen');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.teal)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const HeightWith1(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              profiledatas[index].name,
                                              style: appFonts.f20black,
                                            ),
                                           const Row(
                                              children: [
                                                VerySmallButtonWithRow2(content: ' 2 years', contentIcon: FontAwesomeIcons.clock),
                                                SizedBox(width: 5,),
                                                VerySmallButtonWithRow2(content: ' 25k-30k', contentIcon: FontAwesomeIcons.indianRupeeSign)
                                              ],
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: CircleAvatar(
                                            radius: 25,
                                            backgroundImage: AssetImage(profiledatas[index].img),),
                                        )
                                      ],
                                    ),
                                    const HeightWith1(),
                                    Row(
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.bagShopping,
                                          size: 15,
                                          color: appColors.appPrimaryBlue,
                                        ),
                                         const Text(
                                            ' Paperplane- ',style: TextStyle(color: Colors.grey)),
                                            Text(
                                            'UI UX Designer   2022',style: appFonts.f12grey,),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const HeightWith(),
                              Container(
                                height: screenHeight(context) * 0.05,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.1)),
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Center(
                                      child: Text(
                                        'Looking for product designer role which includes',
                                        style: appFonts.f12Bluegrey,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          const SizedBox()
        ])),
      ),
    );
  }
}





