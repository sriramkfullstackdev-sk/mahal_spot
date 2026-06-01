import 'package:flutter/material.dart';
import '../../widgets/mahal_details/custom_textfield.dart';
import '../../widgets/mahal_details/photo_grid_section.dart';
import '../../widgets/mahal_details/address_button.dart';

class MahalDetailsPage extends StatelessWidget {
  const MahalDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [

                const SizedBox(height: 20),

                /// TITLE
                Container(
                  height: 55,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "MAHAL DETAILS",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(height: 35),

                /// TEXTFIELDS
                const CustomTextField(
                  hintText: "Mahal name",
                ),

                const SizedBox(height: 15),

                const CustomTextField(
                  hintText: "Mahal EB No",
                ),

                const SizedBox(height: 15),

                /// PHOTO ADD
                Container(
                  height: 55,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Mahal photos add",
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                /// PHOTO GRID
                const PhotoGridSection(),

                const SizedBox(height: 25),

                const CustomTextField(
                  hintText: "Mahal manager name",
                ),

                const SizedBox(height: 15),

                const CustomTextField(
                  hintText: "manager mbl no",
                ),

                const SizedBox(height: 15),

                const CustomTextField(
                  hintText: "Mahal seating capacity",
                ),

                const SizedBox(height: 15),

                const CustomTextField(
                  hintText: "Ac / Non Ac",
                ),

                const SizedBox(height: 15),

                const CustomTextField(
                  hintText: "Description",
                  maxLines: 3,
                ),

                const SizedBox(height: 30),

                /// ADDRESS BUTTON
                const AddressButton(),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}