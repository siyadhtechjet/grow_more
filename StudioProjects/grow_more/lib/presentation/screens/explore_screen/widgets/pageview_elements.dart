import 'package:flutter/material.dart';
import 'package:grow_more/presentation/widgets/height_0.2.dart';

class PageViewElements extends StatelessWidget {
  final String content;
  final String contentImage;
  const PageViewElements(
      {super.key, required this.content, required this.contentImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 260,
          child: Text(
            content,
            style:const TextStyle(),
            textAlign: TextAlign.center,
            maxLines: 3,
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