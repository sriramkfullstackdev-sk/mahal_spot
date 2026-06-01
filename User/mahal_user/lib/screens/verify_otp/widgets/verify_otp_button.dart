import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../routes/app_routes.dart';

class VerifyOtpButton extends StatelessWidget {
  const VerifyOtpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.homePage);
      },

      child: Container(
        width: 120,
        height: 45,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),

          gradient: const LinearGradient(
            colors: [AppColors.buttonStart, AppColors.buttonEnd],
          ),

          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, 4),
            ),
          ],
        ),

        child: const Center(
          child: Text(
            "Verify OTP",

            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
