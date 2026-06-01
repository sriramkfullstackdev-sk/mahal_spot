import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';
import '../../utils/app_colors.dart';
import 'widgets/custom_textfield.dart';
import 'widgets/location_row.dart';
import 'widgets/state_dropdown.dart';
import 'widgets/finish_button.dart';

class OwnerDetailsPage extends StatefulWidget {
  const OwnerDetailsPage({super.key});

  @override
  State<OwnerDetailsPage> createState() => _OwnerDetailsPageState();
}

class _OwnerDetailsPageState extends State<OwnerDetailsPage> {

  String? selectedState;

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
                    horizontal: 20,
                    vertical: 15,
                  ),

                  decoration: BoxDecoration(

                    color: Colors.grey.shade300,

                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: const Text(
                    "MAHAL OWNER DETAILS",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              /// OWNER NAME
              const CustomTextField(
                hintText: "Mahal owner name",
              ),

              const SizedBox(height: 15),

              /// MOBILE NUMBER
              const CustomTextField(
                hintText: "mobile number",
                keyboardType: TextInputType.phone,
              ),

              const SizedBox(height: 15),

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

              const SizedBox(height: 8),

              const CustomTextField(),

              const SizedBox(height: 15),

              const Text(
                "Area,Street,Sector,Village",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 8),

              const CustomTextField(),

              const SizedBox(height: 35),

              //const CustomTextField(),

              const SizedBox(height: 10),

              /// PINCODE + CITY
              const LocationRow(),

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

              const SizedBox(height: 40),

              /// SMALL BOX
              Container(
                height: 15,
                width: 15,
                color: Colors.grey.shade300,
              ),

              const SizedBox(height: 40),

              /// FINISH BUTTON
              Center(
                child: FinishButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.mahalDetails,
                    );
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