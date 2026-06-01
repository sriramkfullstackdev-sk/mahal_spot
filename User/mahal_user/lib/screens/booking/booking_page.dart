import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/mahal_card.dart';
import 'widgets/check_button.dart';
//import 'widgets/book_now_button.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),

          child: Column(
            children: [

              /// TOP BAR
              const AppBarWidget(),

              const SizedBox(height: 60),
              /// TITLE
              const Text(
                "Mahal Spot",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
              ),

              const SizedBox(height: 50),

              /// MAHAL CARD
              const MahalCard(),

              const SizedBox(height: 40),

              /// CHECK AVAILABILITY
              const CheckButton(),

              const SizedBox(height: 20),

              /// BOOK NOW
              // const BookNowButton(),
            ],
          ),
        ),
      ),
    );
  }
}
