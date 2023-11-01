import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/widgets/height_with4.dart';
import 'package:grow_more/presentation/screens/recruiter_profile_screen/widgets/profile_textfield.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class RecruiterProfileScreen extends StatelessWidget {
  const RecruiterProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: appFonts.f15white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.bell)),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: Column(
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                  width: screenWidth(context)*0.26,
                  height: screenWidth(context)*0.26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(image: AssetImage(appImage.proPic),fit: BoxFit.cover)
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    backgroundColor: appColors.appPrimaryGreyLight,
                    child:const Icon(Icons.camera_alt),))
                ], 
              ),
            ],
          ),
          const HeightWith4(),
          const ProfileTextFieldWidget(
            hint: 'Name',
            hintIcon: FontAwesomeIcons.user,
          ),
          const HeightWith(),
          const ProfileTextFieldWidget(
            hint: 'Email',
            hintIcon: FontAwesomeIcons.envelope,
          ),
          const HeightWith(),
          const ProfileTextFieldWidget(
            hint: 'Mobile Number',
            hintIcon: FontAwesomeIcons.phone,
          ),
          const HeightWith(),
           ProfileTextFieldWidget(
            hint: 'Password',
            hintIcon: FontAwesomeIcons.unlock,
            sufixHint: Icon(FontAwesomeIcons.eyeSlash,color: appColors.appPrimaryGrey,),
          ),
          const HeightWith(),
          TextField(
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'About Me',
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: appColors.appPrimaryGrey))
            ),
          ),
          const Spacer(),
          const SubmitButtonWidget(buttonText: 'Save Profile'),
        ]),
      )),
    );
  }
}

