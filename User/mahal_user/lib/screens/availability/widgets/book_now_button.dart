import 'package:flutter/material.dart';

import '../../../routes/app_routes.dart';

class BookNowButton extends StatelessWidget {
  const BookNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.bookingFormPage),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),

          gradient: const LinearGradient(
            colors: [Colors.orange, Colors.deepOrange],
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
          "BOOK NOW",
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 31, 21, 21),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
