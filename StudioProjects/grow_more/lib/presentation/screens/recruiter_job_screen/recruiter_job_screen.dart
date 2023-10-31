import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/image_manager.dart';
import 'package:grow_more/manager/text_style_manager.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/recommend_job_screen.dart';
import 'package:grow_more/presentation/screens/recommend_job_screen/widgets/height_with4.dart';
import 'package:grow_more/presentation/screens/recruiter_job_screen/widgets/very_small_button.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class RecruiterJobScreen extends StatefulWidget {
  const RecruiterJobScreen({super.key});

  @override
  State<RecruiterJobScreen> createState() => _RecruiterJobScreenState();
}

class _RecruiterJobScreenState extends State<RecruiterJobScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const ProfileDrawer(),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: const Icon(
              FontAwesomeIcons.bars,
              color: Colors.blueGrey,
            )),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.message,
                color: appColors.appPrimaryBlue,
              )),
          IconButton(
              onPressed: () {},
              icon:
                  Icon(FontAwesomeIcons.bell, color: appColors.appPrimaryBlue))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.separated(
          itemCount: categoryDta.length,
          separatorBuilder: (context, index) => SizedBox(
            height: screenHeight(context) * 0.03,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.toNamed('/RecruiterJobResponsesScreen');
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.teal)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                categoryDta[index].categoryTitle,
                                style: appFonts.f20black,
                              ),
                              Switch(
                                inactiveThumbColor: Colors.grey,
                                activeColor: Colors.teal,
                                value: false,
                                onChanged: (value) {
                                  setState(() {
                                    status == value;
                                  });
                                },
                              )
                            ],
                          ),
                          Text(
                            '20 response',
                            style: appFonts.f12grey,
                          ),
                          const HeightWith1(),
                          const VerySmallButton(content: 'Edit'),
                        ],
                      ),
                    ),
                    const HeightWith(),
                    Container(
                      height: screenHeight(context) * 0.05,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: Colors.blue.withOpacity(0.1)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '20 Response',
                              style: appFonts.f12Bluegrey,
                            ),
                            const SizedBox(
                                height: 15,
                                child: VerticalDivider(
                                  color: Colors.grey,
                                )),
                            Text(
                              'Explore candidate',
                              style: appFonts.f12Bluegrey,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      )),
    );
  }
}



class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:15,vertical: 15),
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(appImage.proPic),),
              title:const Text('Karishma Patil'),
              subtitle: Text('Hiring Manager',style: appFonts.f12Bluegrey,),
            ),
            SizedBox(height: screenHeight(context)*0.08,),
            const ListTile(
              leading: Icon(FontAwesomeIcons.house,size: 20,),
              title: Text('Home'),
            ),
            const ListTile(
              leading: Icon(FontAwesomeIcons.rectangleList,size: 20,),
              title: Text('Job Listings'),
            ),
            const ListTile(
              leading: Icon(FontAwesomeIcons.reply,size: 20,),
              title: Text('Responses'),
            ),
            const ListTile(
              leading: Icon(FontAwesomeIcons.bookmark,size: 20,),
              title: Text('Saved Resumes'),
            ),
             ListTile(
              onTap: () {
                Get.toNamed('/RecruiterProfileScreen');
              },
              leading:const Icon(FontAwesomeIcons.user,size: 20,),
              title:const Text('Profile'),
            ),
            const ListTile(
              leading: Icon(FontAwesomeIcons.gear,size: 20,),
              title: Text('Settings'),
            ),
            const ListTile(
              leading: Icon(FontAwesomeIcons.rightFromBracket,size: 20,),
              title: Text('Logout'),
            )
           
          ],
        ),
      ),
    );
  }
}
