import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String? hintText;

  const CustomTextField({
    super.key,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {

    return TextField(

      decoration: InputDecoration(

        hintText: hintText,

        filled: true,

        fillColor: Colors.grey.shade300,

        border: OutlineInputBorder(

          borderRadius: BorderRadius.circular(0),

          borderSide: BorderSide.none,
        ),

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 18,
        ),
      ),
    );
  }
}