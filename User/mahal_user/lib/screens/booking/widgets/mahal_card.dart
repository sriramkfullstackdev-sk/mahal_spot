import 'package:flutter/material.dart';

import 'photo_grid.dart';
import 'mahal_details.dart';

class MahalCard extends StatelessWidget {

  const MahalCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(

        border: Border.all(
          color: Colors.black54,
        ),

        borderRadius: BorderRadius.circular(25),
      ),

      child: const Column(

        children: [

          /// TITLE
          Text(
            "SRI LAKSHMI MAHAL",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 10),

          /// SUBTITLE
          Text(
            "MAHAL PHOTOS",
            style: TextStyle(
              fontSize: 14,
            ),
          ),

          SizedBox(height: 25),

          /// PHOTOS
          PhotoGrid(),

          SizedBox(height: 30),

          /// DETAILS
          MahalDetails(),
        ],
      ),
    );
  }
}