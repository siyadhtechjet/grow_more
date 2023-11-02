import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(appImage.proPic),
              ),
              title: const Text('Karishma Patil'),
              subtitle: Text(
                'Hiring Manager',
                style: appFonts.f12Bluegrey,
              ),
            ),
            SizedBox(
              height: screenHeight(context) * 0.08,
            ),
            const ListTile(
              leading: Icon(
                FontAwesomeIcons.house,
                size: 20,
              ),
              title: Text('Home'),
            ),
            const ListTile(
              leading: Icon(
                FontAwesomeIcons.rectangleList,
                size: 20,
              ),
              title: Text('Job Listings'),
            ),
            const ListTile(
              leading: Icon(
                FontAwesomeIcons.reply,
                size: 20,
              ),
              title: Text('Responses'),
            ),
            const ListTile(
              leading: Icon(
                FontAwesomeIcons.bookmark,
                size: 20,
              ),
              title: Text('Saved Resumes'),
            ),
            ListTile(
              onTap: () {
                Get.toNamed('/RecruiterProfileScreen');
              },
              leading: const Icon(
                FontAwesomeIcons.user,
                size: 20,
              ),
              title: const Text('Profile'),
            ),
            const ListTile(
              leading: Icon(
                FontAwesomeIcons.gear,
                size: 20,
              ),
              title: Text('Settings'),
            ),
            const ListTile(
              leading: Icon(
                FontAwesomeIcons.rightFromBracket,
                size: 20,
              ),
              title: Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
