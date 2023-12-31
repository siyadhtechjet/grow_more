import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/job_description_screen.dart/widgets/bullet_point.dart';
import 'package:grow_more/presentation/screens/job_description_screen.dart/widgets/small_elevated_button.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

List<String> numbers = ['1', '2', '3', '4'];
List<String> addedSkills = [];
List<String> qualifications = [
  '10th pass',
  '10th pass and above',
  '+2 pass',
  '+2 pass and above',
  'Graduates',
  'Post graduates'
];

class JobDescriptionForm extends StatefulWidget {
  final Function buttonFunction;
  const JobDescriptionForm({super.key, required this.buttonFunction});

  @override
  State<JobDescriptionForm> createState() => _JobDescriptionFormState();
}

class _JobDescriptionFormState extends State<JobDescriptionForm> {
  final TextEditingController skillController = TextEditingController();

  final TextEditingController jobDescription = TextEditingController();

  final TextEditingController responsibilities = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SimpleHeadLessSize(content: 'Experience'),
          const HeightWith(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: screenWidth(context) * 0.4,
                child: DropDownTextField(
                  textFieldDecoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: appColors.appPrimaryGrey)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: appColors.appPrimaryGrey)),
                      hintText: 'I want to hire',
                      hintStyle: TextStyle(color: appColors.appPrimaryGrey)),
                  dropDownItemCount: numbers.length,
                  dropDownList: List.generate(
                      3,
                      (index) => DropDownValueModel(
                          name: numbers[index], value: numbers[index])),
                  onChanged: (val) {},
                ),
              ),
              Text(
                'To',
                style: appFonts.f15black,
              ),
              SizedBox(
                width: screenWidth(context) * 0.4,
                child: DropDownTextField(
                  textFieldDecoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: appColors.appPrimaryGrey)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: appColors.appPrimaryGrey)),
                      hintText: 'I want to hire',
                      hintStyle: TextStyle(color: appColors.appPrimaryGrey)),
                  dropDownItemCount: numbers.length,
                  dropDownList: List.generate(
                      3,
                      (index) => DropDownValueModel(
                          name: numbers[index], value: numbers[index])),
                  onChanged: (val) {},
                ),
              ),
            ],
          ),
          const HeightWith(),
          const SimpleHeadLessSize(content: 'Candidate minimum qualification'),
          const HeightWith(),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              children: qualifications
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
          const HeightWith(),
          const SimpleHeadLessSize(content: 'Skills'),
          const HeightWith(),
          TextField(
            onSubmitted: (value) {
              setState(() {
                addedSkills.add(value);
                skillController.clear();
              });
            },
            controller: skillController,
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: appColors.appPrimaryGrey)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: appColors.appPrimaryGrey)),
                hintText: 'Is it a Work from home',
                hintStyle: TextStyle(color: appColors.appPrimaryGrey)),
          ),
          const HeightWith(),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              children: addedSkills
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
          const HeightWith(),
          const SimpleHeadLessSize(content: 'Is it a Work from home'),
          const HeightWith(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallElevatedButton(
                  buttonWidth: screenWidth(context) * 0.42,
                  buttonColor: Colors.white,
                  content: 'Yes',
                  buttonHeight: screenHeight(context) * 0.05),
              SmallElevatedButton(
                  buttonWidth: screenWidth(context) * 0.42,
                  buttonColor: Colors.white,
                  content: 'No',
                  buttonHeight: screenHeight(context) * 0.05),
            ],
          ),
          const HeightWith(),
          const SimpleHeadLessSize(content: 'Job Description'),
          const HeightWith(),
          SizedBox(
            height: screenHeight(context) * 0.15,
            child: TextField(
              controller: jobDescription,
              maxLines: 3,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: appColors.appPrimaryGrey)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appColors.appPrimaryGrey)),
                  hintText: 'yes',
                  hintStyle: appFonts.f15grey),
            ),
          ),
          const HeightWith(),
          const SimpleHeadLessSize(content: 'Responsibilities'),
          const HeightWith(),
          SizedBox(
            height: screenHeight(context) * 0.15,
            child: TextField(
              controller: responsibilities,
              maxLines: 3,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: appColors.appPrimaryGrey)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appColors.appPrimaryGrey)),
                  hintText: 'yes',
                  hintStyle: appFonts.f15grey),
            ),
          ),
          const HeightWith(),
          InkWell(
              onTap: () {
                widget.buttonFunction();
              },
              child: const SubmitButtonWidget(buttonText: 'Submit')),
          const HeightWith(),
        ],
      ),
    );
  }
}
