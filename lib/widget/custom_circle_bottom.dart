import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_color.dart';

class CustomCircleBottom extends StatelessWidget {
  final void Function() onTap;
  const CustomCircleBottom({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Padding(
          padding: EdgeInsets.only(right: 39.w, bottom: 36.h),
          child: CircleAvatar(
            backgroundColor: AppColor.fontColor4,
            radius: 40.r,
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.add,
                color: AppColor.backgroundColor3,
              ),
            ),
          )),
    );
  }
}
