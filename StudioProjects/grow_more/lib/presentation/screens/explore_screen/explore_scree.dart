import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
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
                    PageViewElements(
                        content:
                            'Explore job opportunities, connect with employers, and boost your career',
                        contentImage: appImage.explore1),
                    PageViewElements(
                        content:
                            'Grow More offers you a world of opportunities to excel in your career',
                        contentImage: appImage.explore2),
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
                    Get.toNamed('/SignInScreen');
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

class PageViewElements extends StatelessWidget {
  final String content;
  final String contentImage;
  const PageViewElements(
      {super.key, required this.content, required this.contentImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 260,
          child: Text(
            content,
            style:const TextStyle(),
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
        ),
        const HeightWith(),
        Container(
          height: 190,
          width: 190,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(contentImage)),
          ),
        ),
      ],
    );
  }
}
