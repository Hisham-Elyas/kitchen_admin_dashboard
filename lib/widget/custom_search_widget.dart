import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../app_color.dart';

class CustomSearch extends StatelessWidget {
  final double height;
  final double width;
  const CustomSearch({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: AppColor.backgroundColor3,
            borderRadius: BorderRadius.circular(10.r)),
        child: TextField(
          cursorHeight: 30.h,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search...',
            hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
            icon: Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: SvgPicture.asset(
                "assets/svg/search.svg",
                height: 24.h,
                width: 24.w,
              ),
            ),
          ),
        ));
  }
}
