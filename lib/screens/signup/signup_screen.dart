import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:instagram_flutter/screens/signup/signup_controller.dart';
import 'package:instagram_flutter/screens/signup/signup_provider.dart';
import 'package:instagram_flutter/screens/signup/widgets/signup_footer.dart';
import '../../globals/constants/colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignupController signupController = Get.find();
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();

    return Scaffold(
      persistentFooterButtons: const [
        SignupFooter(),
      ],
      backgroundColor: kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () => Get.toNamed('/dash'),
                    icon: Icon(
                      Icons.clear,
                      color: kBlack,
                      size: 40.sp,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 90.w),
              child: Column(children: [
                Text(
                  "Instagram",
                  style: TextStyle(
                    fontSize: 70.sp,
                    fontFamily: "Billabong",
                    letterSpacing: 3.0,
                  ),
                ),
                SizedBox(
                  height: 20.w,
                ),
                TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    labelText: 'Email',
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
                  height: 10.w,
                ),
                TextField(
                  controller: _password,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Password',
                    suffixIcon: const IconButton(
                      icon: Icon(Icons.lock),
                      onPressed: null,
                    ),
                    fillColor: kWhite,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: kBlue,
                      ),
                      borderRadius: BorderRadius.circular(
                        15.w,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.w,
                        color: kRed,
                      ),
                      borderRadius: BorderRadius.circular(
                        15.w,
                      ),
                    ),
                  ),
                  textInputAction: TextInputAction.done,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.w),
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: kBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.w,
                ),
                ElevatedButton(
                  onPressed: () async {
                    await SignupProvider.signUp(_email.text, _password.text);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.w, bottom: 10.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "log in",
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        color: kGray,
                      ),
                    ),
                    SizedBox(
                      height: 70.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w, right: 15.w),
                      child: Text("OR"),
                    ),
                    Expanded(
                      child: Divider(
                        color: kGray,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Log in with Facebook",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
