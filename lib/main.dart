import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_flutter/globals/constants/routes.dart';
import 'package:instagram_flutter/globals/controllers/api_controller.dart';

import 'globals/constants/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _initControllers();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(320, 568),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child) {
        return GetMaterialApp(
          title: 'Instagram',
          debugShowCheckedModeBanner: false,
          getPages: Routes.pages,
          initialRoute: Routes.kDash,
          theme: ThemeData(
            scaffoldBackgroundColor: kWhite,
            primaryColor: kBlack,
            fontFamily: 'Roboto',
          ),
        );
      },
    );
  }
}

_initControllers() {
  Get.put(ApiController(), permanent: true);
}
