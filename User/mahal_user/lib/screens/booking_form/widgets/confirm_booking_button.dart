import 'package:flutter/material.dart';

import '../../../routes/app_routes.dart';

class ConfirmBookingButton extends StatelessWidget {

  const ConfirmBookingButton({super.key});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.userDetailsPage),
      child: Container(

        width: 160,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 12,
        ),

        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(30),

          gradient: const LinearGradient(
            colors: [
              Colors.orange,
              Colors.deepOrange,
            ],
          ),

          boxShadow: const [

            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, 4),
            ),
          ],
        ),

        child: const Text(
          "Confirm booking",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}