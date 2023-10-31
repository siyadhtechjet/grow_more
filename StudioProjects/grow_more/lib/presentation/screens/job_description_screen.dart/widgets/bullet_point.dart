import 'package:flutter/material.dart';

class BulletPoints extends StatelessWidget {
  final String content;
  const BulletPoints({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text('\u2022 $content');
  }
}

class SimpleHead extends StatelessWidget {
  final String content;
  const SimpleHead({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
    );
  }
}

class SimpleHeadLessSize extends StatelessWidget {
  final String content;
  const SimpleHeadLessSize({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
    );
  }
}

