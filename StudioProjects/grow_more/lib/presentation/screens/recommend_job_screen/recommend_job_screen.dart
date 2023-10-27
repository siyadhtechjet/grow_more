import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class RecommentJobScreen extends StatelessWidget {
   RecommentJobScreen({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: appColors.appPrimaryBlue,),
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        }, icon:const Icon(FontAwesomeIcons.list,color: Colors.blueGrey,)),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {
            
          }, icon: Icon(FontAwesomeIcons.message,color: appColors.appPrimaryBlue,)),
          IconButton(onPressed: () {
            
          }, icon: Icon(FontAwesomeIcons.bell,color: appColors.appPrimaryBlue))
        ],
      ),
      body: SafeArea(child: Column(
        children: [
          Container(
            height: screenHeight(context)*0.05,
            width: screenHeight(context)*0.6,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Job title, keywords'
              ),
            ),
          )
        ],
      )),
    );
  }
}