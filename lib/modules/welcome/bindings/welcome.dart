import 'package:adove/modules/home/controllers/home.dart';
import 'package:adove/modules/welcome/controllers/welcome.dart';
import 'package:get/get.dart';

class WelcomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}