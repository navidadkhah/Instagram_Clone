import 'package:get/get.dart';
import 'package:instagram_flutter/screens/home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
