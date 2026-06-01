import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(

      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonColor,

        elevation: 8,
        shadowColor: Colors.black45,

        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 12,
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),

      child: Text(
        text,

        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }
}