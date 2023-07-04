import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PostsInExplore extends StatelessWidget {
  const PostsInExplore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.purple,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.green,
      Colors.white,
      Colors.green,
      Colors.black,
      Colors.cyan,
      Colors.redAccent,
      Colors.orange,
      Colors.purple,
      Colors.indigoAccent,
      Colors.tealAccent,
      Colors.blueAccent,
      Colors.purple,
      Colors.orangeAccent,
      Colors.redAccent,
      Colors.deepOrangeAccent,
      Colors.limeAccent,
      Colors.lightBlueAccent,
      Colors.lightBlueAccent,
      Colors.lightGreenAccent,
      Colors.redAccent,
      Colors.black,
    ];

    final children = colors
        .map(
          (c) => InkWell(
            onTap: () {
              Get.toNamed("/post");
            },
            child: Container(
              color: c,
            ),
          ),
        )
        .toList();

    return GridView(
      // TODO: bind from backend
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: children,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 1.w,
        crossAxisSpacing: 1.w,
      ),
    );
  }
}
