import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_color.dart';
import '../../widget/custom_buttom_widget.dart';
import '../../widget/custom_circle_bottom.dart';
import '../../widget/custom_search_widget.dart';

class ProductSecion extends StatelessWidget {
  const ProductSecion({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
            color: AppColor.backgroundColor2,
            borderRadius: BorderRadius.circular(20.r),
            elevation: 1,
            child: Container(
              // width: 948.w,
              height: 949.h,
              padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 20.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// DropdownButton
                      SizedBox(
                        width: 241.w,
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
                                  "Category",
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
                        width: 562.w,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 47.h,
                  ),

                  //// Products list
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 15.h),
                      itemCount: 10,
                      itemBuilder: (context, index) => ProductWidget(
                        onTapDelete: () {},
                        onTapUpdate: () {},
                      ),
                    ),
                  ),
                ],
              ),
            )),
        // Add Circle bottom
        CustomCircleBottom(
          onTap: () {},
        )
      ],
    );
  }
}

class ProductWidget extends StatelessWidget {
  final void Function()? onTapUpdate;
  final void Function()? onTapDelete;
  const ProductWidget({
    super.key,
    this.onTapUpdate,
    this.onTapDelete,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 103.h,
      width: 873.w,
      child: Material(
        color: AppColor.backgroundColor3,
        borderRadius: BorderRadius.circular(10.r),
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Image.asset(
                  "assets/png/food_img1.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10.w),
                Text(
                  "Beef Juicy Burger",
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
                  "Stats",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                SizedBox(height: 23.h),
                SizedBox(
                  height: 10.h,
                  width: 10.w,
                  child: Checkbox(
                    fillColor:
                        const MaterialStatePropertyAll(AppColor.mainColor),
                    value: false,
                    onChanged: (value) {},
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  "Best",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                SizedBox(height: 23.h),
                SizedBox(
                  height: 15.h,
                  width: 15.w,
                  child: Checkbox(
                    fillColor:
                        const MaterialStatePropertyAll(AppColor.mainColor),
                    value: true,
                    onChanged: (value) {},
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Size",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                Text(
                  "M",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor4),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Sale",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor3),
                ),
                Text(
                  "18",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.fontColor4),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButtom(
                  color: const Color(0xff9098E0),
                  height: 32.76.h,
                  title: "Update",
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
