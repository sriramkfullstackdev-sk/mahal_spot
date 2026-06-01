import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class SendOtpButton extends StatelessWidget {
  final VoidCallback onPressed;
  const SendOtpButton({super.key, required this.onPressed});

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
      child: const Text(
        "sent OTP",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }
}