import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_flutter/screens/profile/widgets/edit_profile.dart';
import '../../../globals/constants/colors.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.w, right: 20.w, left: 20.w),
      child: ButtonTheme(
        minWidth: double.infinity,
        child: MaterialButton(
          onPressed: () {
            Get.to(
              const EditProfile(),
            );
          },
          color: kWhite,
          elevation: 2,
          child: const Text(
            'Edit Profile',
            style: TextStyle(color: kBlack),
          ),
        ),
      ),
    );
  }
}
