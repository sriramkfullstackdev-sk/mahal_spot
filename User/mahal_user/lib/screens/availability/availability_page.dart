import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import 'widgets/book_now_button.dart';
import 'widgets/calendar_widget.dart';
import 'widgets/legend_item.dart';
import 'widgets/top_bar_widget.dart';

class AvailabilityPage extends StatelessWidget {
  const AvailabilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              /// TOP BAR
              const TopBarWidget(),

              const SizedBox(height: 30),

              /// CALENDAR
              const CalendarWidget(),

              const SizedBox(height: 25),

              /// LEGEND ROW 1
              const Row(
                children: [
                  Expanded(
                    child: LegendItem(
                      icon: "X",
                      title: "FULL BOOKED",
                      color: Colors.red,
                    ),
                  ),

                  Expanded(
                    child: LegendItem(
                      icon: "☀",
                      title: "MORNING BOOKED",
                      color: Colors.black,
                      iconColor: Colors.yellow,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              /// LEGEND ROW 2
              const Row(
                children: [
                  Expanded(
                    child: LegendItem(
                      icon: "☾",
                      title: "EVENING BOOKED",
                      color: Colors.black,
                      iconColor: Colors.white,
                    ),
                  ),

                  Expanded(
                    child: LegendItem(
                      icon: "◔",
                      title: "BOOKING PENDIND",
                      color: Colors.black,
                      iconColor: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              /// LEGEND ROW 3
              const Row(
                children: [
                  Expanded(
                    child: LegendItem(
                      icon: "▲",
                      title: "Date pending",
                      color: Colors.black,
                      iconColor: Colors.yellow,
                    ),
                  ),

                  Expanded(
                    child: LegendItem(
                      icon: "",
                      title: "Today date",
                      color: Color(0xFFAFC0DF),
                      isCircle: true,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 70),

              /// BOOK BUTTON
              const Center(child: BookNowButton()),
            ],
          ),
        ),
      ),
    );
  }
}
