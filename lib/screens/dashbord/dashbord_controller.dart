import 'package:get/get.dart';

class DashbordController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex(index);
  }
}
