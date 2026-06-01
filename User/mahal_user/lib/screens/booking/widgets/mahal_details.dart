import 'package:flutter/material.dart';

class MahalDetails extends StatelessWidget {

  const MahalDetails({super.key});

  @override
  Widget build(BuildContext context) {

    return const Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Text(
          "SRI LAKSHMI MAHAL",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 10),

        Row(

          children: [

            Text(
              "35,000",
              style: TextStyle(
                fontSize: 18,
              ),
            ),

            SizedBox(width: 5),

            Text(
              "perday",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),

        SizedBox(height: 5),

        Text(
          "MADURAI",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}