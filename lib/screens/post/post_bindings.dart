import 'package:get/get.dart';
import 'package:instagram_flutter/screens/post/post_controller.dart';

class PostBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostController());
  }
}
