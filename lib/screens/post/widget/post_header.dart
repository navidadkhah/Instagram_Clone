import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_flutter/globals/constants/colors.dart';
import 'package:instagram_flutter/globals/constants/text_styles.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key? key,
    required this.isFollow,
  }) : super(key: key);

  final bool isFollow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
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
            ),
          ),
          isFollow
              ? const SizedBox()
              : SizedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: RaisedButton(
                          onPressed: () {
                            // TODO: follow this account
                          },
                          color: kWhite,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: kSearchColor,
                              width: 1.w,
                            ),
                            borderRadius: BorderRadius.circular(
                              6.w,
                            ),
                          ),
                          child: const Text(
                            "Follow",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
