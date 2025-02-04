import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/constant/app_fonts.dart';
import 'package:test_app/constant/colors.dart';
import 'package:test_app/widgets/custom_image_view.dart';

class CustomImageCard extends StatelessWidget {
  const CustomImageCard(
      {super.key,
      required this.image,
      required this.title,
      this.width = 50,
      this.height = 200});

  final String image;
  final String title;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        // Wrap the Stack with ClipRRect
        borderRadius: BorderRadius.circular(25.0), // Set the border radius
        child: Stack(
          children: [
            CustomImageView(
              width: width,
              imagePath: image,
              fit: BoxFit.cover,
            ),
            Opacity(
              opacity: 0.84,
              child: Container(height: height, color: kBlackColor),
            ),
            Center(
              child: Text(title,
                  style: AppFonts.x20Regular.copyWith(color: kWhite)),
            )
          ],
        ),
      ),
    );
  }
}
