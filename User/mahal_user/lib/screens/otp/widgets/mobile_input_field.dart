import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';

class MobileInputField extends StatelessWidget {
  const MobileInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 48,

      decoration: BoxDecoration(
        color: AppColors.textFieldColor,
      ),

      child: const TextField(
        keyboardType: TextInputType.phone,

        decoration: InputDecoration(
          hintText: "Enter your mobile number",

          border: InputBorder.none,

          contentPadding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 14,
          ),
        ),
      ),
    );
  }
}