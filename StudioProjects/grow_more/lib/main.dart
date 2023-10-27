import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grow_more/manager/color_manager.dart';
import 'package:grow_more/manager/rout_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Grow More",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: appColors.appPrimaryBlue,
            primary: appColors.appPrimaryBlue),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/Splash',
      getPages: onAppRouting(),
    );
  }
}
