import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';

class OptionCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const OptionCard({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        /// CIRCLE
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade300,
            border: Border.all(
              color: Colors.black54,
            ),
          ),
        ),

        const SizedBox(height: 10),

        /// BUTTON
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 130,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: [
                  AppColors.orange1,
                  AppColors.orange2,
                ],
              ),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.shadow,
                  blurRadius: 6,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}