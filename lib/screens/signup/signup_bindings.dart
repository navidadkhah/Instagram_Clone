import 'package:get/get.dart';
import 'package:instagram_flutter/screens/signup/signup_controller.dart';

class SignupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController());
  }
}
