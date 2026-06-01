import 'package:flutter/material.dart';

import '../../../models/mahal_model.dart';

import 'mahal_card.dart';

class MahalList extends StatelessWidget {
  const MahalList({super.key});

  @override
  Widget build(BuildContext context) {

    final List<MahalModel> mahals = [

      MahalModel(
        mahalName: "SRI LAKSMI MAHAL",
        price: "35,000",
        location: "MADURAI",
      ),

      MahalModel(
        mahalName: "THENDRAL MAHAL",
        price: "40,000",
        location: "Kumbakonam",
      ),

      MahalModel(
        mahalName: "KRG MAHAL",
        price: "80,000",
        location: "Thanjavur",
      ),

      MahalModel(
        mahalName: "RAYA MAHAL",
        price: "1,00,000",
        location: "Chennai",
      ),

    ];

    return ListView.builder(

      itemCount: mahals.length,

      itemBuilder: (context, index) {

        return MahalCard(
          mahal: mahals[index],
        );
      },
    );
  }
}