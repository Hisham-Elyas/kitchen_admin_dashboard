import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_color.dart';
import '../../widget/custom_buttom_widget.dart';
import '../../widget/custom_search_widget.dart';

class OrderSecion extends StatelessWidget {
  const OrderSecion({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: AppColor.backgroundColor2,
        borderRadius: BorderRadius.circular(20.r),
        elevation: 1,
        child: Container(
          // width: 1330.w,
          height: 949.h,
          padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 20.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// DropdownButton
                  SizedBox(
                    width: 245.03.w,
                    height: 55.h,
                    child: Material(
                      borderRadius: BorderRadius.circular(15.r),
                      color: AppColor.backgroundColor3,
                      child: DropdownButton(
                        isExpanded: true,
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        dropdownColor: AppColor.backgroundColor2,
                        elevation: 2,
                        value: 1,
                        iconSize: 24.w,
                        underline: const SizedBox(),
                        borderRadius: BorderRadius.circular(10.r),
                        items: [
                          DropdownMenuItem(
                            value: 1,
                            child: Text(
                              "New Orders",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.fontColor2),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text(
                              "Old Orders",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.fontColor2),
                            ),
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ),

                  /// Search...
                  CustomSearch(
                    height: 55.h,
                    width: 887.59.w,
                  )
                ],
              ),
              SizedBox(
                height: 47.h,
              ),

              //// Orders list
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 15.h),
                  itemCount: 2,
                  itemBuilder: (context, index) => OrdersDetailsWidget(
                    onTapDelete: () {},
                    onTapDetails: () {},
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class OrdersDetailsWidget extends StatelessWidget {
  final void Function()? onTapDetails;
  final void Function()? onTapDelete;
  const OrdersDetailsWidget({
    super.key,
    this.onTapDetails,
    this.onTapDelete,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 201.h,
      width: 1211.w,
      child: Material(
        color: AppColor.backgroundColor3,
        borderRadius: BorderRadius.circular(10.r),
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 35.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CircleAvatar(
              radius: 50.dm,
              backgroundImage: const AssetImage(
                "assets/png/prfile_img1.png",
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Mohamed Hossny",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.fontColor4),
                ),
                Text(
                  "mohamed@gmail.com",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.fontColor3),
                ),
                Text(
                  "+99657785754",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.fontColor3),
                ),
              ],
            ),
            SizedBox(
              width: 180.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Address",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.fontColor4),
                  ),
                  Text(
                    "King Khaled ,dammam , saudi arabia",
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.fontColor3),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Date",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor4),
                ),
                Text(
                  "21/4/2024",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Time",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor4),
                ),
                Text(
                  "10:30 AM",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
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
                      color: AppColor.fontColor4),
                ),
                Text(
                  "5",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
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
                      color: AppColor.fontColor4),
                ),
                Text(
                  "100 SAR",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButtom(
                  color: const Color(0xff5B6AF4),
                  height: 32.76.h,
                  title: "Details",
                  width: 117.w,
                  onTap: () {},
                ),
                CustomButtom(
                  color: const Color(0xffF11515),
                  height: 32.76.h,
                  title: "Delete",
                  width: 117.w,
                  onTap: () {},
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
