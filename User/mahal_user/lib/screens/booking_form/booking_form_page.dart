import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import 'widgets/event_name_field.dart';
import 'widgets/date_field.dart';
import 'widgets/time_field.dart';
import 'widgets/confirm_booking_button.dart';

class BookingFormPage extends StatelessWidget {

  const BookingFormPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColors.background,

      body: SafeArea(

        child: Padding(

          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 40,
          ),

          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),

                /// EVENT NAME FIELD
                const EventNameField(),

                const SizedBox(height: 80),

                /// START DATE & TIME
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// START DATE
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "start date",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const DateField(),
                      ],
                    ),

                    /// START TIME
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "start time",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const TimeField(),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 50),

                /// END DATE & TIME
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// END DATE
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "End date",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const DateField(),
                      ],
                    ),

                    /// END TIME
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "end time",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const TimeField(),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 70),

                /// CONFIRM BUTTON
                const Center(child: ConfirmBookingButton()),

                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
