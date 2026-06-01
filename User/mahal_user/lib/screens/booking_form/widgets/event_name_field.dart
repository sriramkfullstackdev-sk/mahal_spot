import 'package:flutter/material.dart';

class EventNameField extends StatelessWidget {

  const EventNameField({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,
      height: 70,

      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),

      decoration: BoxDecoration(
        color: Colors.grey.shade300,
      ),

      child: const TextField(

        decoration: InputDecoration(

          hintText: "Enter your events name",

          border: InputBorder.none,

          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}