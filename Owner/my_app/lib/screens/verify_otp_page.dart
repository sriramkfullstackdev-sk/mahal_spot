import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/otp_circle_box.dart';
import '../routes/app_routes.dart';

class VerifyOtpPage extends StatelessWidget {
  const VerifyOtpPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              // OTP Circle Boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  OtpCircleBox(),
                  const SizedBox(width: 12),

                  OtpCircleBox(),
                  const SizedBox(width: 12),

                  OtpCircleBox(),
                  const SizedBox(width: 12),

                  OtpCircleBox(),
                  const SizedBox(width: 12),

                  OtpCircleBox(),
                ],
              ),

              const SizedBox(height: 30),

              // Resend OTP
              GestureDetector(
                onTap: () {

                },

                child: const Text(
                  "Resent OTP ?",

                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Verify OTP Button
              CustomButton(
                text: "Verify OTP",

                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.welcome);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}