import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String? hintText;
  final TextInputType? keyboardType;

  const CustomTextField({
    super.key,
    this.hintText,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {

    return TextField(

      keyboardType: keyboardType,

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