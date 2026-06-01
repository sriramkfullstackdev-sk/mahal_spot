import 'package:flutter/material.dart';

class PhotoGrid extends StatelessWidget {

  const PhotoGrid({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Color> colors = [

      Colors.brown.shade300,
      Colors.indigo.shade300,
      Colors.lime.shade300,
      Colors.red.shade400,
      Colors.purple.shade300,
      Colors.cyan.shade400,
    ];

    return Wrap(

      spacing: 15,
      runSpacing: 15,

      children: List.generate(

        6,

        (index) => Container(

          height: 130,
          width: 130,

          decoration: BoxDecoration(

            color: colors[index],

            border: Border.all(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}