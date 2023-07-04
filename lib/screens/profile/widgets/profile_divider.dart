import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../globals/constants/colors.dart';

class ProfileDivider extends StatelessWidget {
  const ProfileDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.only(
              top: 20.w,
              bottom: 2.w,
            ),
            child: const Icon(
              Icons.grid_view_outlined,
            ),
          ),
        ),
        Divider(
          height: 1,
          thickness: 1.w,
          color: kBlack,
        ),
      ],
    );
  }
}
