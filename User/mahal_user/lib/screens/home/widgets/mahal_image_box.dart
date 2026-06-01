import 'package:flutter/material.dart';

class MahalImageBox extends StatelessWidget {
  const MahalImageBox({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(

      width: 95,
      height: 70,

      color: const Color(0xFFC9A3A3),

      child: const Center(

        child: Text(
          "MAHAL\nPHOTOS",

          textAlign: TextAlign.center,

          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}