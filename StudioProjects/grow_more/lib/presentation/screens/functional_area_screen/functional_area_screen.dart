import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/functional_area_screen/datas.dart';
import 'package:grow_more/presentation/screens/job_description_screen.dart/widgets/bullet_point.dart';
import 'package:grow_more/presentation/screens/job_description_screen.dart/widgets/small_elevated_button.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/widgets/height_with4.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';


class FunctionalAreaScreen extends StatelessWidget {
  const FunctionalAreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              }, icon:const Icon(FontAwesomeIcons.arrowLeft,color: Colors.black,)),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: SmallElevatedButton(
                  buttonWidth: screenWidth(context) * 0.32,
                    buttonHeight: screenHeight(context) * 0.02,
                    buttonColor: appColors.appPrimaryBlue,
                    content: 'Save'),
              ),
            )
          ]),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeightWith1(),
            Row(
              children: [
                const SimpleHead(content: 'Functional Area'),
                const Spacer(),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '1',
                      style: TextStyle(
                          color: appColors.appPrimaryBlue, fontSize: 20)),
                  const TextSpan(
                      text: '/5',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ]))
              ],
            ),
            SizedBox(
                width: screenWidth(context) * 0.7,
                child: Text(
                  'Functional area helps us find job listings that match your skills and expertise',
                  style: appFonts.f12grey,
                )),
            const HeightWith1(),
            Container(
              height: screenHeight(context) * 0.06,
              decoration: BoxDecoration(
                  color: appColors.appPrimaryGreyLight,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: '  Job title, keywords',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
            ),
            const HeightWith4(),
            Row(
              children: [
                SizedBox(
                  height: screenHeight(context) * 0.61,
                  width: screenWidth(context) * 0.3,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                    itemCount: departments.length,
                    itemBuilder: (context, index) {
                      return Text(
                        departments[index],
                        style: appFonts.f15grey,
                      );
                    },
                  ),
                ),
                SizedBox(
                    height: screenHeight(context) * 0.61,
                    child: VerticalDivider(
                      color: appColors.appPrimaryGrey,
                    )),
                SizedBox(
                  height: screenHeight(context) * 0.61,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SimpleHeadLessSize(
                            content: 'Software Development'),
                          const HeightWith1(),
                        SizedBox(
                          width: screenWidth(context)*0.5,
                          child: Wrap(
                            children: software
                                .map((item) => Card(
                                  color: appColors.appPrimaryGreyLight,
                                  child: SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text(item),
                                  ))))
                                .toList()
                                .cast<Widget>(),
                          ),
                        ),
                        const HeightWith(),
                        const SimpleHeadLessSize(
                            content: 'Product Design'),
                          const HeightWith1(),
                        SizedBox(
                          width: screenWidth(context)*0.5,
                          child: Wrap(
                            children: productDesign
                                .map((item) => Card(
                                  color: appColors.appPrimaryGreyLight,
                                  child: SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text(item),
                                  ))))
                                .toList()
                                .cast<Widget>(),
                          ),
                        ),
                        const HeightWith(),
                        const SimpleHeadLessSize(
                            content: 'UI/UX Design'),
                          const HeightWith1(),
                        SizedBox(
                          width: screenWidth(context)*0.5,
                          child: Wrap(
                            children: uiux
                                .map((item) => Card(
                                  color: appColors.appPrimaryGreyLight,
                                  child: SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text(item),
                                  ))))
                                .toList()
                                .cast<Widget>(),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            Row(
              children: [
               const Text('Selected '),
                SizedBox(
                  height: screenHeight(context)*0.05,
                  child:const VerticalDivider()),
                  const SizedBox()
              ],
            ),
           const HeightWith()
          ],
        ),
      )),
    );
  }
}
