import 'package:flutter/material.dart';

class VerySmallButton extends StatelessWidget {
  final String content;
  const VerySmallButton({
    super.key,
    required this.content
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(5)),
      child:  Padding(
        padding:const EdgeInsets.symmetric(horizontal: 8),
        child: Text(
          content,
          style:
            const  TextStyle(color: Colors.blue, fontSize: 12),
        ),
      ),
    );
  }
}