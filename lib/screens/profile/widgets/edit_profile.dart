import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../globals/constants/colors.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        foregroundColor: kBlack,
        centerTitle: true,
        title: const Text(
          "Edit Profile",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 24.w,
                horizontal: 24.w,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      fillColor: kWhite,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.w, color: kBlue),
                        borderRadius: BorderRadius.circular(15.w),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.w, color: kRed),
                        borderRadius: BorderRadius.circular(15.w),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 12.w,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      fillColor: kWhite,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.w, color: kBlue),
                        borderRadius: BorderRadius.circular(15.w),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.w, color: kRed),
                        borderRadius: BorderRadius.circular(15.w),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 12.w,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Bio',
                      fillColor: kWhite,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.w, color: kBlue),
                        borderRadius: BorderRadius.circular(15.w),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.w, color: kRed),
                        borderRadius: BorderRadius.circular(15.w),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 12.w,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.w, bottom: 10.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Edit",
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
