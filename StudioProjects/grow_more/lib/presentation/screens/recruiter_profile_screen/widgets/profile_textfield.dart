import 'package:flutter/material.dart';
import 'package:grow_more/manager/color_manager.dart';

class ProfileTextFieldWidget extends StatelessWidget {
  final String hint;
  final IconData hintIcon;
  final Icon? sufixHint;
  const ProfileTextFieldWidget({
    super.key,
    required this.hint,
    required this.hintIcon,
    this.sufixHint
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          suffixIcon: sufixHint,
          prefixIcon: Icon(hintIcon,color: appColors.appPrimaryBlue,),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: appColors.appPrimaryGrey))
        ),
      ),
    );
  }
}
