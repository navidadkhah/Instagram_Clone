import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../globals/constants/text_styles.dart';

class DirectMessages extends StatelessWidget {
  const DirectMessages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8.w,
            horizontal: 8.w,
          ),
          child: const CircleAvatar(
              //TODO: profile image form backend
              ),
        ),
        Text(
          //TODO: username form backend
          "Username",
          style: kSemiBoldBlack14,
        ),
      ],
    );
  }
}
