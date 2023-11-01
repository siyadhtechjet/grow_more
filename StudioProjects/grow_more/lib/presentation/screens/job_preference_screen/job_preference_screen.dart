import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/sign_in_screen.dart/sign_in_screen.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

List<String> jobType = ['Full Time', 'On Site', 'Part Time'];
List<String> cities = [
  'Bangalore',
  'Chennai',
  'Mumbai',
  'Kochi',
  'Hyderabad',
  'Kolkata'
];

class JobPreferenceScreen extends StatefulWidget {
  const JobPreferenceScreen({super.key});

  @override
  State<JobPreferenceScreen> createState() => _JobPreferenceScreenState();
}

final SingleValueDropDownController jobtypeconroller=SingleValueDropDownController();
final SingleValueDropDownController citycontroller=SingleValueDropDownController();
final TextEditingController fromLpa=TextEditingController();
final TextEditingController toLpa=TextEditingController();
final TextEditingController functionArea=TextEditingController();

@override
void initState() {
  jobtypeconroller.clearDropDown();
  citycontroller.clearDropDown();
}

@override
void dispose() {
  jobtypeconroller.dispose();
  citycontroller.dispose();
}

class _JobPreferenceScreenState extends State<JobPreferenceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
              'Job Preference',
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight(context) * 0.1,
                  ),
                  DropDownTextField(
                    controller: jobtypeconroller,
                    textFieldDecoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: appColors.appPrimaryGrey)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: appColors.appPrimaryGrey)),
                        hintText: 'Job Type',
                        hintStyle:
                            TextStyle(color: appColors.appPrimaryGreyLight)),
                    dropDownItemCount: jobType.length,
                    dropDownList: List.generate(
                        3,
                        (index) => DropDownValueModel(
                            name: jobType[index], value: jobType[index])),
                    onChanged: (val) {},
                  ),
                  const HeightWith(),
                   NormalTextField(
                    controller: functionArea,
                    trailing: IconButton(onPressed: () {
                      Get.toNamed('/FunctionalAreaScreen');
                    }, icon:const Icon(FontAwesomeIcons.angleRight,size: 17,)),
                    hintInside: 'Functional Area'),
                  SizedBox(
                    height: screenHeight(context) * 0.06,
                  ),
                  Text(
                    'Expected Salary',
                    style:
                        TextStyle(fontSize: 18, color: appColors.appPrimaryGrey),
                  ),
                  const HeightWith(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: screenHeight(context) * 0.17,
                        decoration: BoxDecoration(
                            border: Border.all(color: appColors.appPrimaryGrey)),
                        child:  Padding(
                          padding:const EdgeInsets.only(left: 8.0),
                          child: NormalTextField(
                            controller: fromLpa,
                            hintInside: 'LPA'),
                        ),
                      ),
                      Text(
                        'To',
                        style: appFonts.f15black,
                      ),
                      Container(
                        width: screenHeight(context) * 0.17,
                        decoration: BoxDecoration(
                            border: Border.all(color: appColors.appPrimaryGrey)),
                        child:  Padding(
                          padding:const EdgeInsets.only(left: 8.0),
                          child: NormalTextField(
                            controller: toLpa,
                            hintInside: 'LPA'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.06,
                  ),
                  DropDownTextField(
                    controller: citycontroller,
                    textFieldDecoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: appColors.appPrimaryGrey)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: appColors.appPrimaryGrey)),
                        hintText: 'Job Type',
                        hintStyle:
                            TextStyle(color: appColors.appPrimaryGreyLight)),
                    dropDownItemCount: cities.length,
                    dropDownList: List.generate(
                        cities.length,
                        (index) => DropDownValueModel(
                            name: cities[index], value: cities[index])),
                    onChanged: (val) {},
                  ),
                ],
              ),
              SizedBox(
                    height: screenHeight(context) * 0.25,
                  ),
              InkWell(
                  onTap: () {
                    Get.toNamed('/RecommentJobScreen');
                  },
                  child: const SubmitButtonWidget(buttonText: 'Save & Next'))
            ],
          ),
        ),
      ),
    );
  }
}
