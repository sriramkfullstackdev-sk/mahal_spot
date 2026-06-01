import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';

class RegisterButton extends StatelessWidget {

  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.ownerHome);
      },
      child: Container(

        padding: const EdgeInsets.symmetric(
          horizontal: 30,
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
          "Register",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}