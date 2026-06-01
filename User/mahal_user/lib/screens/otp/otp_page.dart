import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import 'widgets/mobile_input_field.dart';
import 'widgets/send_otp_button.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [

              MobileInputField(),

              SizedBox(height: 50),

              SendOtpButton(),

            ],
          ),
        ),
      ),
    );
  }
}