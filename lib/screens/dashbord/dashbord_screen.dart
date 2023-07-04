import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_flutter/globals/constants/colors.dart';
import 'package:instagram_flutter/screens/dashbord/dashbord_controller.dart';
import 'package:instagram_flutter/screens/explor/explore_screen.dart';
import 'package:instagram_flutter/screens/home/home_screen.dart';
import 'package:instagram_flutter/screens/profile/profile_screen.dart';

class DashbordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DashbordController dashbordController = Get.find();

    return Obx(
      () {
        final tabIndex = dashbordController.tabIndex.value;
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: tabIndex,
              children: const [
                HomeScreen(),
                ExplorScreen(),
                ProfileScreen(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: kBlack,
            selectedItemColor: kBlack,
            
            onTap: dashbordController.changeTabIndex,
            currentIndex: tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  (dashbordController.tabIndex.value == 0)
                      ? Icons.cottage_rounded
                      : Icons.cottage_outlined,
                  size: 24.w,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  (dashbordController.tabIndex.value == 1)
                      ? Icons.explore
                      : Icons.explore_outlined,
                  size: 24.w,
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  (dashbordController.tabIndex.value == 2)
                      ? Icons.account_circle
                      : Icons.account_circle_outlined,
                  size: 24.w,
                ),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
