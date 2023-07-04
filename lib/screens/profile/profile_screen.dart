import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_flutter/globals/constants/colors.dart';
import 'package:instagram_flutter/screens/profile/widgets/profile_bio.dart';
import 'package:instagram_flutter/screens/profile/widgets/profile_button.dart';
import 'package:instagram_flutter/screens/profile/widgets/profile_divider.dart';
import 'package:instagram_flutter/screens/profile/widgets/profile_header.dart';
import 'package:instagram_flutter/screens/profile/widgets/profile_image.dart';
import 'package:instagram_flutter/screens/profile/widgets/profile_posts.dart';
import './widgets/profile_data_of_account.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhite,
        appBar: AppBar(
          title: const ProfileHeader(),
          backgroundColor: kWhite,
          toolbarHeight: 48.h,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12.w,
                  horizontal: 16.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ProfileImage(),
                    ProfileDataOfAccount(),
                  ],
                ),
              ),
              const ProfileBio(),
              const ProfileButton(),
              const ProfileDivider(),
              const ProfilePosts(),
            ],
          ),
        ),
      ),
    );
  }
}
