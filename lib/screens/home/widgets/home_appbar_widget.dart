import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_flutter/globals/constants/colors.dart';

class HomeAppbarWidget extends StatelessWidget {
  const HomeAppbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Instagram",
          style: TextStyle(
            fontFamily: "Billabong",
            fontSize: 38.0.sp,
            color: kBlack,
          ),
        ),
        SizedBox(
          width: 36.w,
          child: Stack(
            children: const [
              Align(
                alignment: Alignment.centerLeft,
                child: _AppbarMessageButton(),
              ),
              Align(
                alignment: Alignment.topRight,
                child: _AppbarMessageBadge(),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _AppbarMessageBadge extends StatelessWidget {
  const _AppbarMessageBadge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16.w,
      height: 16.w,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kRed,
      ),
      child: Center(
        child: Text(
          "2", // TODO: bind to backend
          style: TextStyle(
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }
}

class _AppbarMessageButton extends StatelessWidget {
  const _AppbarMessageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.toNamed('/direct');
      },
      icon: Icon(
        Icons.send_rounded,
        color: kBlack,
        size: 24.sp,
      ),
    );
  }
}
