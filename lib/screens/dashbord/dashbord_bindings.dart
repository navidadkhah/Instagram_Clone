import 'package:get/get.dart';
import 'package:instagram_flutter/screens/dashbord/dashbord_controller.dart';

class DashbordBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashbordController());
  }
}
