import 'package:flutter/material.dart';
import 'photo_upload_box.dart';

class PhotoGridSection extends StatelessWidget {
  const PhotoGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 15,
      runSpacing: 15,
      alignment: WrapAlignment.center,
      children: [

        PhotoUploadBox(
          title: "Mahal\nSide pic",
        ),

        PhotoUploadBox(
          title: "Mahal\nCouples Room\npic",
        ),

        PhotoUploadBox(
          title: "Mahal\nStage pic",
        ),

        PhotoUploadBox(
          title: "Mahal\nDining Hall pic",
        ),

        PhotoUploadBox(
          title: "Mahal\nFront Hall pic",
        ),

        PhotoUploadBox(
          title: "Mahal\nParking pic",
        ),
      ],
    );
  }
}