import 'package:flutter/material.dart';
import 'package:grow_more/utils/util_dimensions.dart';

class CountContainer extends StatelessWidget {
  final Color containerColor;
  final String count;
  final String countTitle;
  const CountContainer(
      {super.key,
      required this.containerColor,
      required this.count,
      required this.countTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: screenHeight(context) * 0.2,
        width: screenWidth(context) * 0.43,
        decoration: BoxDecoration(
            color: containerColor, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight(context) * 0.05,
              ),
              Text(
                count,
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                countTitle,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ));
  }
}