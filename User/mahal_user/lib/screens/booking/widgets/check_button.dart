import 'package:flutter/material.dart';

import '../../../routes/app_routes.dart';

class CheckButton extends StatelessWidget {
  const CheckButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.availabilityPage),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),

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
          "Check Availability",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
