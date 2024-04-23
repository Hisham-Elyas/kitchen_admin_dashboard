import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../app_color.dart';

class CircularPercentSecion extends StatelessWidget {
  const CircularPercentSecion({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 1,
        color: AppColor.backgroundColor2,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 372.w,
          height: 585.h,
          padding: EdgeInsets.all(30.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.r))),
          child: Column(
            children: [
              Text(
                "Customers",
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColor.fontColor4),
              ),
              Text(
                "Information About your Customers",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColor.fontColor3),
              ),
              SizedBox(height: 32.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyCircularPercentIndicatorWidget(
                    title: "Current Customers",
                    percent: 0.85,
                    progressColor: Color(0xff5F27CD),
                  ),
                  MyCircularPercentIndicatorWidget(
                    title: "New Customers",
                    percent: 0.15,
                    progressColor: Color(0xffFFC029),
                  ),
                ],
              ),
              SizedBox(height: 51.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyCircularPercentIndicatorWidget(
                    title: "Target Customers",
                    percent: 0.90,
                    progressColor: Color(0xffFF8918),
                  ),
                  MyCircularPercentIndicatorWidget(
                    title: "Retarget Customers",
                    percent: 0.15,
                    progressColor: Color(0xffFF6B6B),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class MyCircularPercentIndicatorWidget extends StatelessWidget {
  final Color? progressColor;
  final double percent;
  final String title;
  const MyCircularPercentIndicatorWidget({
    super.key,
    required this.percent,
    required this.progressColor,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      animation: true,
      animationDuration: 2000,
      animateFromLastPercent: true,
      reverse: true,
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: progressColor,
      backgroundColor: const Color(0xffE2E2E2),
      radius: 60.r,
      lineWidth: 8.0.w,
      percent: percent,
      footer: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColor.fontColor3),
        ),
      ),
      center: Text(
        "${percent * 100}%",
        style: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.w700,
          color: progressColor,
        ),
      ),
    );
  }
}
