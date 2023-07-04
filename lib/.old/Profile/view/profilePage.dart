import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.w,
                    left: 8.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        const Icon(
                          Icons.lock,
                        ),
                        Text(
                          "username",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.w, right: 8.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline,
                        size: 30.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.w),
                        child: Icon(
                          Icons.list,
                          size: 30.w,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30.w, left: 15.w),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: const AssetImage(
                                'assets/images/image.png',
                              ),
                              backgroundColor: Colors.blue,
                              child: Stack(
                                children: [
                                  Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Icon(
                                          Icons.circle,
                                          size: 30.w,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Icon(
                                          Icons.add_circle,
                                          size: 30.w,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              minRadius: 30.w,
                              maxRadius: 45.w,
                            ),
                          ],
                        ),
                      ),
                      dataOfAccount("2", "Posts"),
                      dataOfAccount("284", "Followers"),
                      dataOfAccount("980", "Following"),
                    ],
                  ),
                  bio(
                    "This is a bio for this sample account page.",
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.w),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

dataOfAccount(String num, String name) {
  return Padding(
    padding: EdgeInsets.only(right: 12.w),
    child: Column(
      children: [
        Text(
          num,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}

bio(String bio) {
  return Padding(
    padding: EdgeInsets.only(
      left: 20.w,
      top: 20.w,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          bio,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
