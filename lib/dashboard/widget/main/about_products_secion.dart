import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app_color.dart';

class AboutProductsSecion extends StatelessWidget {
  const AboutProductsSecion({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      color: AppColor.backgroundColor2,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 948.w,
        // height: 341.h,*
        height: 360.h,
        padding: EdgeInsets.symmetric(horizontal: 25.w).copyWith(top: 25.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.r))),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardWidget(
                    svgAssetName: "assets/svg/Delivery.svg",
                    title: "Total Visits \n 10.8m",
                  ),
                  CardWidget(
                    svgAssetName: "assets/svg/Orders.svg",
                    title: "Total Sales \n 100,345",
                    colorSvg: Color(0xff5F27CD),
                  ),
                  CardWidget(
                    svgAssetName: "assets/svg/bag.svg",
                    title: "Total Products \n 200k",
                  ),
                  CardWidget(
                    svgAssetName: "assets/svg/priner.svg",
                    title: "Orders Completed \n 98,771",
                  ),
                ]),
            SizedBox(height: 20.h),
            Row(
              children: [
                Text(
                  "Top Products",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor2),
                ),
              ],
            ),
            SizedBox(height: 18.h),
            const TopProductsWidget(
              imgAssetName: 'assets/png/food_img1.png',
              productName: "Beef Juicy Burger",
              size: 'M',
              price: "20 SAR",
              sale: "15 SAR",
              inventory: "150",
              total: "1500 SAR",
            ),
            SizedBox(height: 18.h),
            const TopProductsWidget(
              imgAssetName: 'assets/png/food_img2.png',
              productName: "Beef Juicy Burger",
              size: 'L',
              price: "25 SAR",
              sale: "18 SAR",
              inventory: "70",
              total: "1260 SAR",
            ),
          ],
        ),
      ),
    );
  }
}

class TopProductsWidget extends StatelessWidget {
  final String imgAssetName;
  final String productName;
  final String size;
  final String price;
  final String sale;
  final String inventory;
  final String total;
  const TopProductsWidget({
    super.key,
    required this.imgAssetName,
    required this.productName,
    required this.size,
    required this.price,
    required this.sale,
    required this.inventory,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        color: AppColor.backgroundColor3,
        borderRadius: BorderRadius.circular(10.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          height: 67.h,
          width: 852.w,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Image.asset(
                  imgAssetName,
                  height: 80.h,
                  width: 80.w,
                  fit: BoxFit.contain,
                ), //'assets/png/food_img1.png'
                Text(
                  productName,
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.fontColor3),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Size",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                Text(
                  size,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor4),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                Text(
                  price,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor4),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Sale",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                Text(
                  sale,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor4),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Inventory",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                Text(
                  inventory,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor4),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                Text(
                  total,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor4),
                ),
              ],
            ),
          ]),
        ));
  }
}

class CardWidget extends StatelessWidget {
  final String svgAssetName;
  final Color? colorSvg;
  final String title;
  const CardWidget({
    super.key,
    required this.svgAssetName,
    required this.title,
    this.colorSvg = AppColor.mainColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.backgroundColor3,
      borderRadius: BorderRadius.circular(20.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        width: 130.w,
        height: 80.h,
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                svgAssetName,
                color: colorSvg,
                fit: BoxFit.scaleDown,
                height: 35.h,
                width: 35.w,
              ),
              SizedBox(width: 15.w),
              Text(
                title,
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.fontColor3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
