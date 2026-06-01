import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {

  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(

      children: [

        /// PROFILE IMAGE
        Container(

          height: 80,
          width: 80,

          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            shape: BoxShape.circle,
          ),
        ),

        const SizedBox(width: 20),

        /// NAME
        const Text(
          "mahal owner name",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}