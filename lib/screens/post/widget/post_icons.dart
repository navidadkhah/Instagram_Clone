import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostIcons extends StatelessWidget {
  const PostIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    // TODO: like the post
                  },
                  icon: Icon(
                    Icons.favorite_border,
                    size: 24.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: IconButton(
                    onPressed: () {
                      // TODO: go to comment section
                    },
                    icon: Icon(
                      Icons.comment,
                      size: 24.sp,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // TODO: share this post to another
                  },
                  icon: Icon(
                    Icons.ios_share,
                    size: 24.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: IconButton(
                onPressed: () {
                  // TODO: save the post
                },
                icon: Icon(
                  Icons.save_alt_outlined,
                  size: 24.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
