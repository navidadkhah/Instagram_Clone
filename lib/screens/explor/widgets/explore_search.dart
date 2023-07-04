import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../globals/constants/colors.dart';

class ExploreSearch extends StatelessWidget {
  const ExploreSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 6.w, bottom: 2.w),
      child: SizedBox(
        width: 264.w,
        height: 36.w,
        child: TextField(
          style: const TextStyle(
            color: kBlack,
            decoration: TextDecoration.none,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: kSearchColor,
            hintText: "Search",
            prefixIcon: const Icon(
              Icons.search,
              color: kBlack,
            ),
            contentPadding: EdgeInsets.only(
              left: 15.w,
              bottom: 11.w,
              top: 11.w,
              right: 15.w,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: kWhite,
              ),
              borderRadius: BorderRadius.circular(
                8.w,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(
                color: kWhite,
              ),
              borderRadius: BorderRadius.circular(
                8.w,
              ),
            ),
          ),
          textInputAction: TextInputAction.done,
        ),
      ),
    );
  }
}
