import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/search_bar_widget.dart';
import 'widgets/mahal_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),

          child: Column(
            children: const [

              SizedBox(height: 20),

              CustomAppBar(),

              SizedBox(height: 40),
              SearchBarWidget(),

              SizedBox(height: 30),

              Expanded(child: MahalList()),
            ],
          ),
        ),
      ),
    );
  }
}
