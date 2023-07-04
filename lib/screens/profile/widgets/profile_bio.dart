import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_flutter/globals/constants/text_styles.dart';

class ProfileBio extends StatelessWidget {
  const ProfileBio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.w,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "This is a bio for this sample account page.",
          // TODO: bind from backend
          style: kNormalBlack12,
        ),
      ),
    );
  }
}
