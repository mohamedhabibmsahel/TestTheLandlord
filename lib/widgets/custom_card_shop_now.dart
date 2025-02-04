import 'package:flutter/material.dart';
import 'package:test_app/constant/app_fonts.dart';
import 'package:test_app/widgets/custom_button_category';
import 'package:test_app/widgets/custom_image_view.dart';

class ShopCard extends StatelessWidget {
  final String imageUrl;
  final double height;
  final String title;
  final String text;

  const ShopCard({
    super.key,
    required this.imageUrl,
    required this.height,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth,
      height: height,
      child: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CustomImageView(
                imagePath: imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Text & Button
          Align(
            alignment: Alignment.centerLeft, // Align the column to the left
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisSize:
                    MainAxisSize.min, // Prevent column from taking full height
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to start
                children: [
                  Text(
                    text,
                    style: AppFonts.x30Bold.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8), // Add spacing
                  SizedBox(
                    width: 150,
                    child: CustomButtonCategory(
                      title: title,
                      backgroundColor: Colors.white,
                      titleColor: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
