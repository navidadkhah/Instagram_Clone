import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_flutter/globals/constants/colors.dart';
import 'package:instagram_flutter/screens/post/widget/each_post.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({
    Key? key,
    this.kColor,
  }) : super(key: key);
  final Color? kColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
        foregroundColor: kBlack,
        toolbarHeight: 48.h,
        elevation: 1,
        centerTitle: true,
        title: const Text(
          "Explore",
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          tooltip: 'Back',
          onPressed: () {
            Get.toNamed('/dash');
          },
        ),
      ),
      body: const EachPost(
        isFollow: false,
      ),
    );
  }
}
