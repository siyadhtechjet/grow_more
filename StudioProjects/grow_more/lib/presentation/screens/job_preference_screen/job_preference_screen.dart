import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/sign_in_screen.dart/sign_in_screen.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class JobPreferenceScreen extends StatelessWidget {
  const JobPreferenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            const Text(
              'Job Preference',
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:15,vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight(context)*0.1,),
                const NormalTextField(hintInside: 'Job Type'),
                const HeightWith(),
                const NormalTextField(hintInside: 'Functional Area'),
                SizedBox(height: screenHeight(context)*0.06,),
                Text(
                    'Expected Salary',
                    style: TextStyle(fontSize: 18, color: appColors.appPrimaryGrey),
                  ),
                  const HeightWith(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenHeight(context)*0.17,
                      decoration: BoxDecoration(border: Border.all(color: appColors.appPrimaryGrey)),
                      child:const Padding(
                        padding:  EdgeInsets.only(left:8.0),
                        child: NormalTextField(hintInside: 'LPA'),
                      ),
                    ),
                    Text('To',style: appFonts.f15black,),
                    Container(
                      width: screenHeight(context)*0.17,
                      decoration: BoxDecoration(border: Border.all(color: appColors.appPrimaryGrey)),
                      child:const Padding(
                        padding:  EdgeInsets.only(left:8.0),
                        child: NormalTextField(hintInside: 'LPA'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight(context)*0.06,),
                const NormalTextField(hintInside: 'Preferred City'),
              ],
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/RecommentJobScreen');
              },
              child: const SubmitButtonWidget(buttonText: 'Save & Next'))
          ],
        ),
      ),
    );
  }
}