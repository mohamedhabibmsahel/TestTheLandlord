import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get find => Get.find<HomeController>();
  RxList<String> categoriesList = ["All", "Men", "Women", "Girls", "Kids"].obs;
  RxInt selectedItemIndex = (-1).obs;
}
