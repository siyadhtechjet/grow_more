import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/job_preference_screen/job_preference_screen.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/widgets/height_with4.dart';
import 'package:grow_more/presentation/screens/sign_in_screen.dart/sign_in_screen.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class JobDetailForm extends StatelessWidget {
  final Function buttonFunction;
   JobDetailForm({
    super.key,
    required this.buttonFunction
  });

  final TextEditingController fromLpa=TextEditingController();
final TextEditingController toLpa=TextEditingController();
final TextEditingController noController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropDownTextField(
          textFieldDecoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: appColors.appPrimaryGrey)),
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: appColors.appPrimaryGrey)),
              hintText: 'I want to hire',
              hintStyle:
                  TextStyle(color: appColors.appPrimaryGrey)),
          dropDownItemCount: jobType.length,
          dropDownList: List.generate(
              3,
              (index) => DropDownValueModel(
                  name: jobType[index], value: jobType[index])),
          onChanged: (val) {},
        ),
        const HeightWith4(),
        DropDownTextField(
          textFieldDecoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: appColors.appPrimaryGrey)),
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: appColors.appPrimaryGrey)),
              hintText: 'I want to hire',
              hintStyle:
                  TextStyle(color: appColors.appPrimaryGrey)),
          dropDownItemCount: jobType.length,
          dropDownList: List.generate(
              3,
              (index) => DropDownValueModel(
                  name: jobType[index], value: jobType[index])),
          onChanged: (val) {},
        ),
        const HeightWith4(),
        Text(
          'Expected Salary',
          style:
              TextStyle(fontSize: 16, color: appColors.appPrimaryGrey),
        ),
        const HeightWith4(),
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
        const HeightWith4(),
        Text(
          'No of Staff Required',
          style:
              TextStyle(fontSize: 16, color: appColors.appPrimaryGrey),
        ),
        const HeightWith4(),
        Container(
              width: screenHeight(context) * 0.17,
              decoration: BoxDecoration(
                  border: Border.all(color: appColors.appPrimaryGrey)),
              child:  Padding(
                padding:const EdgeInsets.only(left: 8.0),
                child: NormalTextField(
                  controller: noController,
                  hintInside: 'No.'),
              ),
            ),
            const HeightWith4(),
            InkWell(
              onTap: () {
               buttonFunction();
             },
              child: const SubmitButtonWidget(buttonText: 'Submit'))
        ],
      ),
    );
  }
}
