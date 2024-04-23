import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../app_color.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 141.h,
      padding: EdgeInsets.symmetric(
        horizontal: 47.w,
      ),
      child: Row(
        children: [
          Text(
            "Overview",
            style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
                color: AppColor.fontColor2),
          ),
          const Spacer(),
          DropdownButton(
            icon: SvgPicture.asset('assets/svg/Menu.svg'),
            underline: const SizedBox(),
            borderRadius: BorderRadius.circular(27.r)
                .copyWith(topRight: const Radius.circular(0)),
            items: [
              DropdownMenuItem(
                value: 1,
                child: Text(
                  "العربية",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.fontColor2),
                ),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text(
                  "English",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.fontColor2),
                ),
              ),
            ],
            onChanged: (value) {},
          ),
          SizedBox(width: 33.w),
          SvgPicture.asset('assets/svg/notification.svg'),
          SizedBox(width: 47.w),
          CircleAvatar(child: Image.asset("assets/png/prfile_img1.png"))
        ],
      ),
    );
  }
}
