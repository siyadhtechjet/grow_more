import 'package:flutter/material.dart';
import 'package:grow_more/presentation/screens/job_description_screen.dart/widgets/bullet_point.dart';
import 'package:grow_more/presentation/screens/sign_in_screen.dart/sign_in_screen.dart';
import 'package:grow_more/presentation/screens/spash_screen/spash_screen.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';

class CompanyDetailsForm extends StatelessWidget {
  final Function buttonFunction;
  CompanyDetailsForm({super.key, required this.buttonFunction});

  final TextEditingController companyController = TextEditingController();
  final TextEditingController recruiterController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
   final TextEditingController roleController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController companyAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeightWith(),
            const SimpleHeadLessSize(content: 'Name of the company'),
            const HeightWith(),
             NormalTextField(
              controller: companyController,
              hintInside: 'company'),
            const HeightWith(),
            const SimpleHeadLessSize(content: 'Recruiter name'),
            const HeightWith(),
             NormalTextField(
              controller: recruiterController,
              hintInside: 'recruiter'),
            const HeightWith(),
            const SimpleHeadLessSize(content: 'Email ID'),
            const HeightWith(),
             NormalTextField(
              controller: emailController,
              hintInside: 'email id'),
            const HeightWith(),
            const SimpleHeadLessSize(content: 'Role of recruiter'),
            const HeightWith(),
             NormalTextField(
              controller: roleController,
              hintInside: 'role'),
            const HeightWith(),
            const SimpleHeadLessSize(content: 'Phone Number'),
            const HeightWith(),
             NormalTextField(
              controller: phoneController,
              hintInside: 'phone number'),
            const HeightWith(),
            const HeightWith(),
            const SimpleHeadLessSize(content: 'Company address'),
            const HeightWith(),
             NormalTextField(
              controller: companyAddressController,
              hintInside: 'company address'),
            const HeightWith(),
            InkWell(
                onTap: () {
                  buttonFunction();
                },
                child: const SubmitButtonWidget(buttonText: 'Submit')),
            const HeightWith(),
          ],
        ),
      ),
    );
  }
}
