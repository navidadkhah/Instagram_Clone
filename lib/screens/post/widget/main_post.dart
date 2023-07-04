import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPost extends StatelessWidget {
  const MainPost({
    Key? key,
    this.color,
  }) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 300.w,
      color: color,
    );
  }
}
