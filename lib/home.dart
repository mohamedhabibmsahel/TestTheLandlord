import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:standard_searchbar/old/standard_searchbar.dart';
import 'package:test_app/constant/app_fonts.dart';
import 'package:test_app/constant/constants.dart';
import 'package:test_app/home_controller.dart';
import 'package:test_app/widgets/custom_button_category';
import 'package:test_app/widgets/custom_card_shop_now.dart';
import 'package:test_app/widgets/custom_image_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeController _homeController = Get.put(HomeController());

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
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    StandardSearchBar(
                      backgroundColor: const Color.fromARGB(255, 239, 239, 239),
                      width: 310,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                              255, 239, 239, 239), // Background color
                          borderRadius: BorderRadius.circular(
                              12), // Rounded corners with a radius
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.tune_outlined),
                          color: Colors.black, // Icon color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(AppConstants.categoryTitle,
                          style: AppFonts.x20Bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child:
                          Text(AppConstants.seeAll, style: AppFonts.x12Regular),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _homeController.categoriesList.length,
                    itemBuilder: (context, index) {
                      final category = _homeController.categoriesList[index];
                      bool isSelected =
                          index == _homeController.selectedItemIndex.value;
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomButtonCategory(
                            title: category,
                            backgroundColor: isSelected
                                ? Colors.orange
                                : Color.fromARGB(255, 239, 239, 239),
                            titleColor:
                                isSelected ? Colors.white : Colors.black,
                            onPressed: () {
                              _homeController.selectedItemIndex.value = index;
                            },
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: ShopCard(
                  imageUrl: 'assets/images/pilotes/2.jpeg',
                  height: 250,
                  title: 'Shop Now',
                  text: 'Special Sale',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(AppConstants.popularProduct,
                          style: AppFonts.x20Bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child:
                          Text(AppConstants.seeAll, style: AppFonts.x12Regular),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
