import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePosts extends StatelessWidget {
  const ProfilePosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.amber,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.black,
        ),
        Container(
          color: Colors.green,
        ),
      ],
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 1.w,
        crossAxisSpacing: 1.w,
      ),
    );
  }
}
