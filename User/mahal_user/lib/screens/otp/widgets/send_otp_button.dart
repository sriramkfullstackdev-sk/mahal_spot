import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';
import '../../../routes/app_routes.dart';

class SendOtpButton extends StatelessWidget {
  const SendOtpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.verifyOtpPage);
      },

      child: Container(
        width: 98,
        height: 42,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),

          gradient: const LinearGradient(
            colors: [AppColors.buttonStart, AppColors.buttonEnd],
          ),

          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 4),
            ),
          ],
        ),

        child: const Center(
          child: Text(
            "sent OTP",

            style: TextStyle(color: Color.fromARGB(255, 21, 20, 20), fontSize: 18),
          ),
        ),
      ),
    );
  }
}
