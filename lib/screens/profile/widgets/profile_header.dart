import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../globals/constants/colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.lock,
          size: 18.sp,
          color: kBlack,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.w, right: 5.w),
          child: Text(
            "username", // TODO: bind from backend
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
              color: kBlack,
            ),
          ),
        ),
        Container(
          width: 16.w,
          height: 16.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: kRed,
          ),
          child: Center(
            child: Text(
              "2", // Todo: bind to backend
              style: TextStyle(
                fontSize: 12.sp,
                color: kWhite,
              ),
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.add_circle_outline,
          size: 24.sp,
          color: kBlack,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
  
          child: IconButton(
            icon: const Icon(
              Icons.table_rows_rounded,color: kBlack,
            ), onPressed:(){
            Get.toNamed('/signup');
          } ),
        ),
      ],
    );
  }
}
