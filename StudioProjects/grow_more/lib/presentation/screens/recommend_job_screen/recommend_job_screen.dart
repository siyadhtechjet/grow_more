import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/core/models/category_model.dart';
import 'package:grow_more/core/models/job_model.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/widgets/count_container.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/widgets/height_with4.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

List<CategoryModel> categoryDta = [
  CategoryModel(
      categoryIcon: Icons.business_outlined, categoryTitle: 'Business'),
  CategoryModel(
      categoryIcon: Icons.health_and_safety, categoryTitle: 'Health Care'),
  CategoryModel(
      categoryIcon: Icons.fitness_center_outlined, categoryTitle: 'Fintech'),
  CategoryModel(
      categoryIcon: Icons.developer_mode_rounded, categoryTitle: 'Development'),
  CategoryModel(categoryIcon: Icons.list_outlined, categoryTitle: 'Others')
];

class RecommentJobScreen extends StatelessWidget {
  RecommentJobScreen({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: appColors.appPrimaryBlue,
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: const Icon(
              FontAwesomeIcons.bars,
              color: Colors.blueGrey,
            )),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.message,
                color: appColors.appPrimaryBlue,
              )),
          IconButton(
              onPressed: () {},
              icon:
                  Icon(FontAwesomeIcons.bell, color: appColors.appPrimaryBlue))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const HeightWith(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenHeight(context) * 0.06,
                    width: screenWidth(context) * 0.75,
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
                  Container(
                      height: screenHeight(context) * 0.06,
                      width: screenWidth(context) * 0.13,
                      decoration: BoxDecoration(
                          color: appColors.appPrimaryGreyLight,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Icon(Icons.mic),
                      )),
                ],
              ),
              const HeightWith4(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CountContainer(
                      containerColor: appColors.appPrimaryBlue,
                      count: '00',
                      countTitle: 'Jobs Applied'),
                  const CountContainer(
                      containerColor: Colors.deepOrangeAccent,
                      count: '00',
                      countTitle: 'Response'),
                ],
              ),
              const HeightWith4(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.deepOrangeAccent,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
              const HeightWith4(),
              SizedBox(
                height: screenHeight(context) * 0.14,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                          height: screenHeight(context) * 0.13,
                          width: screenWidth(context) * 0.26,
                          decoration: BoxDecoration(
                              color: appColors.appPrimaryGreyLight,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  categoryDta[index].categoryIcon,
                                  color: appColors.appPrimaryBlue,
                                ),
                                const SizedBox(height: 4),
                                Text(categoryDta[index].categoryTitle)
                              ],
                            ),
                          ));
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 8,
                        ),
                    itemCount: categoryDta.length),
              ),
              const HeightWith4(),
              const Text(
                'Featured Jobs',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const HeightWith(),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed('/JobDescriptionScreen');
                      },
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      jobDatas[index].jobTitle,
                                      style:const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Icon(FontAwesomeIcons.bookmark,color: appColors.appPrimaryBlue,)
                                ],
                              ),
                              Text(
                                jobDatas[index].jobSubTitle,
                                style: appFonts.f15black,
                              ),
                              Text('data', style: appFonts.f15black),
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.locationDot,color: appColors.appPrimaryBlue,size: 15,),
                                  Text(' ${jobDatas[index].jobLocation} ',
                                      style: appFonts.f15grey),
                                  Icon(FontAwesomeIcons.clock,color: appColors.appPrimaryBlue,size: 15),
                                  Text(' ${jobDatas[index].jobExperience} years',
                                      style: appFonts.f15grey),
                                ],
                              ),
                              Text(
                                "Posted ${jobDatas[index].date} days ago",
                                style:
                                   const TextStyle(fontSize: 13, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>const SizedBox(
                        height: 5,
                      ),
                  itemCount: jobDatas.length)
            ],
          ),
        ),
      )),
    );
  }
}

