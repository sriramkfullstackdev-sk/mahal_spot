import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../routes/app_routes.dart';
import 'widgets/custom_textfield.dart';
import 'widgets/location_field.dart';
import 'widgets/state_dropdown.dart';
import 'widgets/terms_checkbox.dart';
import 'widgets/finish_button.dart';
import 'widgets/notification_icon_widget.dart';

class UserDetailsPage extends StatefulWidget {

  const UserDetailsPage({super.key});

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {

  String? selectedState;

  bool isChecked = true;

  final List<String> states = [
    "Tamil Nadu",
    "Kerala",
    "Karnataka",
    "Andhra Pradesh",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColors.background,

      body: SafeArea(

        child: SingleChildScrollView(

          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 25,
          ),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              /// NOTIFICATION ICON
              const NotificationIconWidget(),

              const SizedBox(height: 20),

              /// TITLE
              Center(
                child: Container(

                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),

                  decoration: BoxDecoration(

                    color: Colors.grey.shade300,

                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: const Text(
                    "USER DETAILS",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 35),

              /// USER NAME
              const CustomTextField(
                hintText: "User name",
              ),

              const SizedBox(height: 18),

              /// MOBILE NUMBER
              const CustomTextField(
                hintText: "mobile number",
              ),

              const SizedBox(height: 18),

              /// LOCATION FIELD
              const LocationField(),

              const SizedBox(height: 20),

              /// ADDRESS TITLE
              const Text(
                "Address",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Flat ,House no ,Building,Company,Apartment",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 10),

              const CustomTextField(),

              const SizedBox(height: 15),

              const Text(
                "Door no :",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 10),

              const CustomTextField(),

              const SizedBox(height: 15),

              const Text(
                "Area,Street,Sector,Village",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 10),

              const CustomTextField(),

              const SizedBox(height: 15),

              /// PINCODE + CITY
              Row(

                children: [

                  Expanded(
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        const Text(
                          "Pincode",
                          style: TextStyle(fontSize: 14),
                        ),

                        const SizedBox(height: 10),

                        const CustomTextField(),
                      ],
                    ),
                  ),

                  const SizedBox(width: 20),

                  Expanded(
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        const Text(
                          "Town/city",
                          style: TextStyle(fontSize: 14),
                        ),

                        const SizedBox(height: 10),

                        const CustomTextField(),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              /// STATE DROPDOWN
              StateDropdown(
                value: selectedState,
                items: states,
                onChanged: (value) {

                  setState(() {
                    selectedState = value;
                  });
                },
              ),

              const SizedBox(height: 30),

              /// TERMS CHECKBOX
              TermsCheckbox(
                value: isChecked,
                onChanged: (value) {

                  setState(() {
                    isChecked = value!;
                  });
                },
              ),

              const SizedBox(height: 35),

              /// FINISH BUTTON
              Center(
                child: FinishButton(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.paymentPage);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}