import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/constant/app_fonts.dart';
import 'package:test_app/constant/constants.dart';
import 'package:test_app/widgets/custom_button_icon.dart';
import 'package:test_app/widgets/custom_buttons.dart';
import 'package:test_app/widgets/custom_image_view.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(children: [
                CustomImageView(
                  imagePath: 'assets/images/pilotes/1.jpeg',
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                  radius: BorderRadius.circular(15),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child:
                          Text(AppConstants.name, style: AppFonts.x12Regular),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(AppConstants.goodMorning,
                          style: AppFonts.x16Bold),
                    )
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey, // Background color
                            borderRadius: BorderRadius.circular(
                                12), // Rounded corners with a radius
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notification_important),
                            color: Colors.white, // Icon color
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey, // Background color
                            borderRadius: BorderRadius.circular(
                                12), // Rounded corners with a radius
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shopping_bag),
                            color: Colors.white, // Icon color
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
