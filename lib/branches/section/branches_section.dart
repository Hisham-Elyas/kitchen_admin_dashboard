import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_color.dart';
import '../../widget/custom_buttom_widget.dart';
import '../../widget/custom_circle_bottom.dart';
import '../../widget/custom_search_widget.dart';

class BranchesSection extends StatelessWidget {
  const BranchesSection({super.key});

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
              padding:
                  EdgeInsets.symmetric(horizontal: 36.w, vertical: 20.dm.h),
              child: Column(children: [
                /// Search...
                CustomSearch(
                  height: 55.h,
                  width: 873.w,
                ),
                SizedBox(height: 47.h),

                //// Products list
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 15.h),
                    itemCount: 2,
                    itemBuilder: (context, index) => CustomersWidget(
                      onTapDelete: () {},
                      onTapUpdate: () {},
                    ),
                  ),
                ),
              ]),
            )),
        // Add Circle bottom
        CustomCircleBottom(
          onTap: () {},
        )
      ],
    );
  }
}

class CustomersWidget extends StatelessWidget {
  final void Function()? onTapUpdate;
  final void Function()? onTapDelete;
  const CustomersWidget({
    super.key,
    this.onTapUpdate,
    this.onTapDelete,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.5.h,
      width: 873.w,
      child: Material(
        color: AppColor.backgroundColor3,
        borderRadius: BorderRadius.circular(10.r),
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 43.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 35.dm,
                    backgroundImage: const AssetImage(
                      "assets/png/prfile_img1.png",
                    ),
                  ),
                  SizedBox(width: 17.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Dammam Kitchen",
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColor.fontColor4),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.phone_outlined,
                            size: 20.dm,
                          ),
                          SizedBox(width: 12.w),
                          Text(
                            "+99657785754",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.fontColor3),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.edit_outlined,
                        size: 20.dm,
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        "+ King Khaled ,dammam , saudi arabia",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColor.fontColor3),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 20.dm,
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        "Ahmed Hantop",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColor.fontColor3),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButtom(
                    color: const Color(0xff9098E0),
                    height: 36.5.h,
                    title: "Update",
                    width: 143.w,
                    onTap: onTapUpdate,
                  ),
                  SizedBox(width: 13.w),
                  CustomButtom(
                    color: const Color(0xffF11515),
                    height: 36.5.h,
                    title: "Delete",
                    width: 143.w,
                    onTap: onTapDelete,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
