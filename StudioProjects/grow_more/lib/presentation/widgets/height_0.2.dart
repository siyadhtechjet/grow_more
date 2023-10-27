import 'package:flutter/material.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class HeightWith extends StatelessWidget {
  const HeightWith({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: screenHeight(context)*0.02,);
  }
}