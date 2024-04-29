import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app_color.dart';

class HomeNavBar extends StatelessWidget {
  final bool isShowBackButton;
  final String title;
  const HomeNavBar({
    super.key,
    required this.title,
    this.isShowBackButton = false,
  });

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
          if (isShowBackButton)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: BackButton(),
            ),
          Text(
            title,
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
          // SvgPicture.asset('assets/svg/notification.svg'),
          // SizedBox(width: 47.w),
          SizedBox(width: 15.w),
          CircleAvatar(child: Image.asset("assets/png/prfile_img1.png"))
        ],
      ),
    );
  }
}
