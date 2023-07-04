import 'package:get/get.dart';
import 'package:instagram_flutter/screens/directs/direct_controller.dart';

class DirectBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DirectController());
  }
}
