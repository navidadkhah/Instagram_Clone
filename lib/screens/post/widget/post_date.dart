import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../globals/constants/text_styles.dart';

class PostDate extends StatelessWidget {
  const PostDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
        ),
        child: Text(
          // TODO: date of publish of post get from backend
          "n days ago",
          style: kNormalBlack12,
        ),
      ),
    );
  }
}
