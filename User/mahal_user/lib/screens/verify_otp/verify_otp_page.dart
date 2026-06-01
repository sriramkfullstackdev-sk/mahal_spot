import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

import 'widgets/otp_box_row.dart';
import 'widgets/resend_otp_text.dart';
import 'widgets/verify_otp_button.dart';

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

            children: const [

              OtpBoxRow(),

              SizedBox(height: 30),

              ResendOtpText(),

              SizedBox(height: 40),

              VerifyOtpButton(),

            ],
          ),
        ),
      ),
    );
  }
}