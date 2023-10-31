import 'package:flutter/material.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';

class RecruiterPageViewElements extends StatelessWidget {
  final String contentHead;
  final String content;
  final String contentImage;
  const RecruiterPageViewElements(
      {super.key,
      required this.content,
      required this.contentImage,
      required this.contentHead});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 260,
          child: Column(
            children: [
              Text(
                contentHead,
                 style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                maxLines: 3,
              ),
              const HeightWith(),
              Text(
                content,
                style: const TextStyle(fontSize: 13),
                textAlign: TextAlign.center,
                maxLines: 3,
              ),
            ],
          ),
        ),
        const HeightWith(),
        Container(
          height: 190,
          width: 190,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(contentImage)),
          ),
        ),
      ],
    );
  }
}
