import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/sign_in_screen.dart/sign_in_screen.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class AddProfileScreen extends StatefulWidget {
 const AddProfileScreen({super.key});

  @override
  State<AddProfileScreen> createState() => _AddProfileScreenState();
}

class _AddProfileScreenState extends State<AddProfileScreen> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();
  int selectedValue = 0;
  bool isContentVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            const Text(
              'Profile',
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(appImage.proPic))),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.white.withOpacity(0.5),
                        radius: 15,
                        child: const Icon(Icons.camera_alt_outlined),
                      )),
                ],
              ),
              const HeightWith(),
              NormalTextField(
                  controller: nameController, hintInside: 'Full Name'),
              const HeightWith(),
              NormalTextField(
                  controller: emailController, hintInside: 'Email ID'),
              const HeightWith(),
              Text(
                'Gender',
                style: TextStyle(fontSize: 18, color: appColors.appPrimaryGrey),
              ),
              Padding(
                padding:const EdgeInsets.only(right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value!;
                              isContentVisible = true;
                            });
                          },
                        ),
                        Text(
                          'Male',
                          style: appFonts.f15grey,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value!;
                              isContentVisible = true;
                            });
                          },
                        ),
                        Text(
                          'Female',
                          style: appFonts.f15grey,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 3,
                          groupValue: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value!;
                              isContentVisible = true;
                            });
                          },
                        ),
                        Text(
                          'Other',
                          style: appFonts.f15grey,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const HeightWith(),
              Text(
                'Summary ( Max.600 Characters )',
                style: appFonts.f15grey,
              ),
              const HeightWith(),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            BorderSide(color: appColors.appPrimaryGrey))),
              ),
              const HeightWith(),
              Text(
                'Upload CV/Resume',
                style: appFonts.f15grey,
              ),
              const HeightWith(),
              Container(
                height: screenHeight(context) * 0.15,
                decoration: BoxDecoration(
                    color: appColors.appPrimaryGrey,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.upload,
                        color: appColors.appPrimaryBlue,
                      ),
                      Text(
                        'Browse File',
                        style: appFonts.f15black,
                      )
                    ],
                  ),
                ),
              ),
              const HeightWith(),
              InkWell(
                  onTap: () {
                    Get.toNamed('/JobPreferenceScreen');
                  },
                  child: const SubmitButtonWidget(buttonText: 'Submit'))
            ],
          ),
        ),
      )),
    );
  }
}
