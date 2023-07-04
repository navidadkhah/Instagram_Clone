import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_flutter/Home/view/Home.dart';
import 'package:instagram_flutter/Profile/view/profilePage.dart';
import 'package:instagram_flutter/Sign/view/signpage.dart';
import 'package:instagram_flutter/globals/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child) {
        return GetMaterialApp(
          title: 'Instagram',
          theme: ThemeData(
            scaffoldBackgroundColor: kBalticSeaColor,
            primaryColor: kBalticSeaColor,
            fontFamily: 'Roboto',
          ),
          debugShowCheckedModeBanner: false,
          getPages: [
            GetPage(name: '/home', page: () => const Home()),
            GetPage(name: '/sign', page: () => const Signpage()),
            GetPage(name: '/profile', page: () => const ProfilePage()),
          ],
          home: const Signpage(),
        );
      },
    );
  }
}
