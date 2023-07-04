import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_flutter/globals/constants/colors.dart';

class SignupFooter extends StatelessWidget {
  const SignupFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1900.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'Don\'t have an account?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kBlack,
            ),
          ),
          Text(
            'Sign Up.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kBlue,
            ),
          ),
        ],
      ),
    );
  }
}
