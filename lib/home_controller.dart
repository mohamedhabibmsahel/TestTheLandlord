import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get find => Get.find<HomeController>();
  RxList<String> categoriesList = ["All", "Men", "Women", "Girls", "Kids"].obs;
  RxList<String> productList = [
    "assets/images/pilotes/1.jpeg",
    "assets/images/pilotes/2.jpeg",
    "assets/images/pilotes/3.jpeg",
    "assets/images/pilotes/4.jpeg",
    "assets/images/pilotes/5.jpeg"
  ].obs;
  RxInt selectedItemIndex = (-1).obs;
}
