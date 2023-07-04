import 'package:get/get.dart';
import 'package:instagram_flutter/screens/explor/explore_controller.dart';

class ExplorBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExplorController());
  }
}
