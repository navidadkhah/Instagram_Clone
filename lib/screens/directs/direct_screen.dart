import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_flutter/globals/constants/colors.dart';
import 'package:instagram_flutter/globals/constants/text_styles.dart';
import 'package:instagram_flutter/screens/directs/widgets/direct_messages.dart';

class DirectScreen extends StatelessWidget {
  const DirectScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final directs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
    // TODO: length of directs from backend

    final children = directs.map((c) => const DirectMessages()).toList();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kWhite,
          foregroundColor: kBlack,
          toolbarHeight: 48.h,
          elevation: 1,
          title: const Text(
            // TODO: bind frome backend
            "Username",
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () {
              Get.toNamed('/dash');
            },
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 4.w,
                  horizontal: 4.w,
                ),
                child: Text(
                  "Messages",
                  style: kMediumBlack16,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: children,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
