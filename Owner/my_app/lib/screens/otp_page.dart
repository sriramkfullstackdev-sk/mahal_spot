import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../widgets/mobile_number_field.dart';
import '../widgets/send_otp_button.dart';
import 'verify_otp_page.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Container(
          width: 350,
          height: 750,
          decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MobileNumberField(),

              const SizedBox(height: 60),

              SendOtpButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const VerifyOtpPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}