import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_flutter/globals/constants/colors.dart';
import 'package:instagram_flutter/screens/post/widget/each_post.dart';
import 'widgets/home_appbar_widget.dart';
import 'widgets/home_stories_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kWhite,
          toolbarHeight: 46.h,
          title: const HomeAppbarWidget(),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              HomeStoriesWidget(),
              EachPost(
                isFollow: true,
              ),
              EachPost(
                isFollow: true,
              ),
              EachPost(
                isFollow: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
