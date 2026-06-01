import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import 'widgets/custom_textfield.dart';
import 'widgets/location_field.dart';
import 'widgets/state_dropdown.dart';
import 'widgets/terms_checkbox.dart';
import 'widgets/register_button.dart';

class MahalAddressPage extends StatefulWidget {
  const MahalAddressPage({super.key});

  @override
  State<MahalAddressPage> createState() => _MahalAddressPageState();
}

class _MahalAddressPageState extends State<MahalAddressPage> {

  String? selectedState;

  bool isChecked = false;

  final List<String> states = [
    "Tamil Nadu",
    "Kerala",
    "Karnataka",
    "Andhra Pradesh",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColors.backgroundColor,

      body: SafeArea(

        child: SingleChildScrollView(

          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 30,
          ),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const SizedBox(height: 20),

              /// TITLE
              Center(
                child: Container(

                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 15,
                  ),

                  decoration: BoxDecoration(

                    color: Colors.grey.shade300,

                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: const Text(
                    "MAHAL  ADDRESS",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              /// CURRENT LOCATION
              const LocationField(),

              const SizedBox(height: 20),

              /// ADDRESS
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
                style: TextStyle(fontSize: 14),
              ),

              const SizedBox(height: 8),

              const CustomTextField(),

              const SizedBox(height: 20),

              const Text(
                "Door No :",
                style: TextStyle(fontSize: 14),
              ),

              const SizedBox(height: 8),

              const CustomTextField(),

              const SizedBox(height: 20),

              const Text(
                "Area,Street,Sector,Village",
                style: TextStyle(fontSize: 14),
              ),

              const SizedBox(height: 8),

              const CustomTextField(),

              const SizedBox(height: 20),

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

                        const SizedBox(height: 8),

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

                        const SizedBox(height: 8),

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

              const SizedBox(height: 60),

              /// REGISTER BUTTON
              const Center(
                child: RegisterButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}