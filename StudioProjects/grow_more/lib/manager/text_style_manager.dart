import 'package:flutter/material.dart';
import 'package:grow_more/manager/color_manager.dart';

AppFonts appFonts = AppFonts();

class AppFonts {
  TextStyle f20black = const TextStyle(color: Colors.black, fontSize: 20);
  TextStyle f17white = const TextStyle(color: Colors.white, fontSize: 17);
  TextStyle f15white = const TextStyle(color: Colors.white, fontSize: 15);
  TextStyle f15grey = const TextStyle(color: Colors.grey, fontSize: 15);
  TextStyle f17grey = const TextStyle(color: Colors.grey, fontSize: 17);
  TextStyle f12grey = const TextStyle(color: Colors.grey, fontSize: 12);
  TextStyle f12black = const TextStyle(color: Colors.black, fontSize: 12);
  TextStyle f15blackbold = const TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold);
  TextStyle f12Bluegrey =  TextStyle(color: appColors.appPrimaryBlue, fontSize: 12);
  TextStyle f14black = const TextStyle(color: Colors.black, fontSize: 14);
  TextStyle f15black = const TextStyle(color: Colors.black, fontSize: 15);
  TextStyle f14bluegrey =
      TextStyle(color: appColors.appPrimaryBlue, fontSize: 14);
      

  get f15bluegrey => null;
}
