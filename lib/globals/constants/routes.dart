import 'package:get/get.dart';
import 'package:instagram_flutter/screens/home/home_bindings.dart';
import 'package:instagram_flutter/screens/home/home_screen.dart';
import 'package:instagram_flutter/screens/profile/profile_bindings.dart';
import 'package:instagram_flutter/screens/profile/profile_screen.dart';
import '../../screens/dashbord/dashbord_bindings.dart';
import '../../screens/dashbord/dashbord_screen.dart';
import '../../screens/directs/direct_bindings.dart';
import '../../screens/directs/direct_screen.dart';
import '../../screens/explor/explore_bindings.dart';
import '../../screens/explor/explore_screen.dart';
import '../../screens/post/post_bindings.dart';
import '../../screens/post/post_screen.dart';
import '../../screens/signup/signup_bindings.dart';
import '../../screens/signup/signup_screen.dart';

class Routes {
  static const kHome = '/home';
  static const kProfile = '/profile';
  static const kExplore = '/explore';
  static const kPost = '/post';
  static const kSignup = '/signup';
  static const kDash = '/dash';
  static const kDirect = '/direct';

  static final pages = [
    GetPage(
      name: kHome,
      page: () => const HomeScreen(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: kProfile,
      page: () => const ProfileScreen(),
      binding: ProfileBindings(),
    ),
    GetPage(
      name: kExplore,
      page: () => const ExplorScreen(),
      binding: ExplorBindings(),
    ),
    GetPage(
      name: kPost,
      page: () => const PostScreen(),
      binding: PostBindings(),
    ),
    GetPage(
      name: kSignup,
      page: () => const SignupScreen(),
      binding: SignupBindings(),
    ),
    GetPage(
      name: kDash,
      page: () => DashbordScreen(),
      binding: DashbordBindings(),
    ),
    GetPage(
      name: kDirect,
      page: () => const DirectScreen(),
      binding: DirectBindings(),
    ),
  ];
}
