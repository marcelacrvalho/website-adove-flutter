import 'package:adove/modules/home/controllers/home.dart';
import 'package:adove/modules/information/controllers/information.dart';
import 'package:get/get.dart';

class InformationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InformationController>(() => InformationController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}