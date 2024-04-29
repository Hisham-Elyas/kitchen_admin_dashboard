import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_color.dart';
import '../../responsive.dart';
import '../../widget/custom_buttom_widget.dart';
import '../../widget/menu/home_nav_bar.dart';

class OrderDetailsSection extends StatelessWidget {
  const OrderDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            const HomeNavBar(title: "Orders", isShowBackButton: true),
          Padding(
            padding: EdgeInsets.only(left: 35.w, right: 5.w), //47* - 28*
            child: Stack(
              children: [
                Material(
                    color: AppColor.backgroundColor2,
                    borderRadius: BorderRadius.circular(20.r),
                    elevation: 1,
                    child: Container(
                      // width: 1330.w,
                      height: 949.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 56.w, vertical: 26.h),
                      child: Column(
                        children: [
                          //// Orders Details
                          Expanded(
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 15.h),
                              itemCount: 12,
                              itemBuilder: (context, index) =>
                                  const OrdersDetailsWidget(),
                            ),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                  bottom: 15.h,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButtom(
                        color: const Color(0xff5EF45B),
                        height: 61.h,
                        width: 258.w,
                        title: "Confirm",
                        onTap: () {},
                      ),
                      SizedBox(width: 34.w),
                      CustomButtom(
                        color: const Color(0xffF11515),
                        height: 61.h,
                        width: 258.w,
                        title: "Delete",
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrdersDetailsWidget extends StatelessWidget {
  const OrdersDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h, //103*
      width: 1190.w,
      child: Material(
        color: AppColor.backgroundColor3,
        borderRadius: BorderRadius.circular(10.r),
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Image.asset(
                  "assets/png/food_img1.png",
                ),
                SizedBox(width: 10.w),
                Text(
                  "Beef Juicy Burgery",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.fontColor4),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Count",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                Text(
                  "5",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor4),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Size",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                Text(
                  "M",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor4),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                Text(
                  "15",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor4),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                Text(
                  "100 SAR",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor4),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Components",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                SizedBox(
                    width: 240.w,
                    height: 70.h, //49.5*
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5, childAspectRatio: 2),
                      itemCount: 12,
                      itemBuilder: (context, index) => Column(
                        children: [
                          Text(
                            index.isEven ? "Beef" : "Cheese",
                            style: TextStyle(
                                backgroundColor: AppColor.backgroundColor2,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.fontColor4),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
