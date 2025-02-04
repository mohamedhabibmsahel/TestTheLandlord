import 'package:flutter/material.dart';
import 'package:test_app/widgets/custom_image_view.dart';

class CustomCardProduct extends StatelessWidget {
  final String imageUrl;

  const CustomCardProduct({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
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

          // Heart Icon at the Top Right
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.all(4), // Padding inside the circle
              decoration: const BoxDecoration(
                color: Colors.white, // Background color
                shape: BoxShape.circle, // Circular shape
              ),
              child: const Icon(
                Icons.favorite_border,
                color: Colors.red,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
