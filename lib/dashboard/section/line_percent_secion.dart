import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../app_color.dart';

class LinePercentSecion extends StatelessWidget {
  const LinePercentSecion({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 1,
        color: AppColor.backgroundColor2,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 372.w,
          // height: 341.h,*
          height: 360.h,

          padding: EdgeInsets.all(10.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.r))),
          child: Column(
            children: [
              Text(
                "Stats Overview",
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColor.fontColor4),
              ),
              Text(
                "Information about store visits",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.fontColor3),
              ),
              SizedBox(height: 34.h),
              const MyLinePercentIndicatorWidget(
                title: "Women",
                percent: 0.63,
                progressColor: Color(0xffFFC029),
              ),
              const MyLinePercentIndicatorWidget(
                title: "Men",
                percent: 0.88,
                progressColor: Color(0xffFF6B6B),
              ),
              const MyLinePercentIndicatorWidget(
                title: "Kids",
                percent: 0.38,
                progressColor: Color(0xff5F27CD),
              ),
            ],
          ),
        ));
  }
}

class MyLinePercentIndicatorWidget extends StatelessWidget {
  final String title;
  final double percent;
  final Color? progressColor;
  const MyLinePercentIndicatorWidget({
    super.key,
    required this.title,
    required this.percent,
    required this.progressColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.fontColor2),
          ),
        ),
        LinearPercentIndicator(
          // width: 315.w,
          animation: true,
          lineHeight: 8,
          animationDuration: 2500,
          percent: percent,
          alignment: MainAxisAlignment.start,
          backgroundColor: AppColor.backgroundColor3,
          barRadius: Radius.circular(10.r),
          progressColor: progressColor,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Text(
              "${percent * 100}%",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColor.fontColor2),
            ),
          ),
        )
      ],
    );
  }
}
