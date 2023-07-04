import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_flutter/globals/models/story_model.dart';

class HomeStoriesWidget extends StatelessWidget {
  const HomeStoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final children = [
      CurrentUserStory(),
    ];

    return SizedBox(
      width: 1.sw,
      height: 72.h,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: children.length,
        itemBuilder: (context, index) => children[index],
        separatorBuilder: (context, index) => 8.verticalSpaceFromWidth,
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    this.story,
  }) : super(key: key);

  final Story? story;

  @override
  Widget build(BuildContext context) {
    String testImageLink = "https://picsum.photos/200";

    return Column(
      children: [],
    );
  }
}

class CurrentUserStory extends StatelessWidget {
  const CurrentUserStory({
    Key? key,
    this.size,
  }) : super(key: key);

  final double? size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: SizedBox(
            width: size != null ? (size! + 6.w) : 64.w,
            height: size != null ? (size! + 6.w) : 64.w,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: size ?? 36.w,
                    backgroundImage: const AssetImage(
                      "assets/images/image.png",
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 18.w,
                    height: 18.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add_rounded,
                        color: Colors.white,
                        size: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
