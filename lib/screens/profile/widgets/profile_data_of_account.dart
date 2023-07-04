import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_flutter/globals/constants/colors.dart';

class ProfileDataOfAccount extends StatelessWidget {
  const ProfileDataOfAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _ProfileDataItem(
          data: "2",
          detail: "Posts",
          onTap: () {
            print("object");
          },
        ),
        _ProfileDataItem(
          data: "283",
          detail: "Followers",
          onTap: () {},
        ),
        _ProfileDataItem(
          data: "980",
          detail: "Following",
          onTap: () {},
        ),
      ],
    );
  }
}

class _ProfileDataItem extends StatelessWidget {
  const _ProfileDataItem({
    Key? key,
    required this.data,
    required this.detail,
    this.onTap,
  }) : super(key: key);

  final String data;
  final String detail;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Text(
              data, //Todo: bind from bachend
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: kBlack,
              ),
            ),
            Text(
              detail,
              style: TextStyle(
                fontSize: 12.sp,
                color: kBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
