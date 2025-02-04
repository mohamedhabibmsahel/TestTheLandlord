import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/home.dart';
import 'package:test_app/home_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /* SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? token = prefs.getBool("firstTime");*/

  runApp(GetMaterialApp(
    initialBinding: InitialBindings(),
    debugShowCheckedModeBanner: false,
    home: Home(),
    getPages: [
      GetPage(
          name: '/',
          page: () => Home(),
          binding: BindingsBuilder.put(() => HomeController())),
    ],
  ));
}

class InitialBindings implements Bindings {
  @override
  void dependencies() async {
    Get.put<HomeController>(HomeController(), permanent: true);
  }
}
