import 'package:get/get.dart';
import 'package:instagram_flutter/screens/profile/profile_controller.dart';

class ProfileBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}
