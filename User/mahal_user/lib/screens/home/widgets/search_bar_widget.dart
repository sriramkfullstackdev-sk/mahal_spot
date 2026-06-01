import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(

      height: 48,

      decoration: BoxDecoration(
        color: AppColors.searchBarColor,
        borderRadius: BorderRadius.circular(30),
      ),

      child: Row(

        children: const [

          SizedBox(width: 15),

          Icon(Icons.menu),

          SizedBox(width: 20),

          Expanded(
            child: TextField(

              decoration: InputDecoration(
                hintText: "search",
                border: InputBorder.none,
              ),
            ),
          ),

          Icon(Icons.search),

          SizedBox(width: 15),

        ],
      ),
    );
  }
}