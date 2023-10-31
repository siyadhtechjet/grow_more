import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/presentation/screens/recruiter_explore_screen/widgets/recruiter_pageview.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class RecruiterExploreScreen extends StatefulWidget {
  const RecruiterExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<RecruiterExploreScreen> {
  int currentPage = 0;

  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:20,horizontal: 10),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(appImage.graph)),
                  ),
                ),
                trailing: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.orange,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight(context)*0.12,
              ),
              Expanded(
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    RecruiterPageViewElements(
                      contentHead: 'Simplify Your Hiring Process',
                        content:
                            'Easily create and publish job listings, update details, and track applicants in one place."',
                        contentImage: appImage.explore3),
                    RecruiterPageViewElements(
                      contentHead: 'Post, Edit, and Track Open Positions',
                        content:
                            'Easily create and publish job listings, update details, and track applicants in one place."',
                        contentImage: appImage.explore4),
                  ],
                ),
              ),
              DotsIndicator(
                dotsCount: 2,
                position: currentPage.round(),
                decorator: DotsDecorator(
                  color: appColors.appPrimaryGrey,
                  activeColor: appColors.appPrimaryBlue,
                  size: const Size(18.0, 9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
              SizedBox(
                height: screenHeight(context)*0.1,
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: InkWell(
                  onTap: () {
                    Get.toNamed('/RecruiterSignInScreen');
                  },
                  child:const SubmitButtonWidget(buttonText: 'Next'))
              )
            ],
          ),
        ),
      ),
    );
  }
}


