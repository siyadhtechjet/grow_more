import 'package:flutter/material.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class HeightWith4 extends StatelessWidget {
  const HeightWith4({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight(context) * 0.04,
    );
  }
}

class HeightWith1 extends StatelessWidget {
  const HeightWith1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight(context) * 0.01,
    );
  }
}
