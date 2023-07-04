import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../globals/constants/colors.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    this.size,
  }) : super(key: key);
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
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
                child: GestureDetector(
                  onTap: () {
                    // TODO: Add story
                  },
                  child: Container(
                    width: 18.w,
                    height: 18.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kBlue,
                    ),
                    child: Icon(
                      Icons.add,
                      color: kWhite,
                      size: 16.sp,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
