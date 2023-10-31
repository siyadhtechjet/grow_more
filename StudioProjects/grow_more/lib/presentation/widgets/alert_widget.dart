import 'package:flutter/material.dart';

class AlertBoxWidget extends StatelessWidget {
  final Widget mainContent;
  const AlertBoxWidget({super.key, required this.mainContent});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(content: mainContent);
  }
}