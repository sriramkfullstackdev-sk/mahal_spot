import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import 'widgets/profile_section.dart';
import 'widgets/search_bar_widget.dart';
import 'widgets/menu_button.dart';
import 'widgets/request_card.dart';

class OwnerHomePage extends StatelessWidget {

  const OwnerHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColors.backgroundColor,

      body: SafeArea(

        child: SingleChildScrollView(

          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 25,
          ),

          child: Column(

            children: [

              /// TOP ICON
              const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.notifications_none,
                  size: 28,
                ),
              ),

              const SizedBox(height: 20),

              /// PROFILE SECTION
              const ProfileSection(),

              const SizedBox(height: 25),

              /// SEARCH BAR
              const SearchBarWidget(),

              const SizedBox(height: 35),

              /// BUTTONS
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  const MenuButton(
                    title: "+ Add Mahal",
                  ),

                  const MenuButton(
                    title: "My Mahal",
                  ),
                ],
              ),

              const SizedBox(height: 15),

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  const MenuButton(
                    title: "Bookings",
                  ),

                  MenuButton(
                    title: "Logut",
                    isGradient: true,
                  ),
                ],
              ),

              const SizedBox(height: 35),

              /// REQUEST LIST
              const RequestCard(
                name: "sri",
                status: "pending",
                statusColor: Colors.amber,
              ),

              const SizedBox(height: 15),

              const RequestCard(
                name: "siva",
                status: "confirmed",
                statusColor: Colors.green,
              ),

              const SizedBox(height: 15),

              const RequestCard(
                name: "amala",
                status: "rejected",
                statusColor: Colors.deepOrangeAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}