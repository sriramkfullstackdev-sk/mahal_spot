import 'package:flutter/material.dart';

class DateField extends StatelessWidget {

  const DateField({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(

      width: 140,
      height: 70,

      alignment: Alignment.center,

      decoration: BoxDecoration(
        color: Colors.grey.shade300,
      ),

      child: const TextField(
        keyboardType: TextInputType.datetime,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: 'dd/mm/yy',
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
          isDense: true,
          contentPadding: EdgeInsets.zero,
        ),
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
}
