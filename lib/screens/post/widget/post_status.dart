import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_flutter/globals/constants/text_styles.dart';

class PostStatus extends StatelessWidget {
  const PostStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                // TODO: number of likes get from backend
                "2,977 Likes",
                style: kSemiBoldBlack14,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.w),
              child: Text(
                // TODO: username get from backend
                "Username",
                style: kSemiBoldBlack14,
              ),
            ),
            Text(
              // TODO: caption get from backend
              "Caption...",
              style: kMediumBlack12,
            ),
          ],
        ),
      ],
    );
  }
}
