import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_color.dart';
import '../../widget/custom_buttom_widget.dart';
import '../../widget/custom_search_widget.dart';

class SittingsSection extends StatelessWidget {
  const SittingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: AppColor.backgroundColor2,
        borderRadius: BorderRadius.circular(20.dm.r),
        elevation: 1,
        child: Container(
          // width: 948.w,
          height: 949.h,
          padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 20.dm.h),
          child: Column(children: [
            /// Search...
            CustomSearch(
              height: 55.h,
              width: 873.w,
            ),
            SizedBox(height: 47.h),

            //// Delivery list
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 15.h),
                itemCount: 2,
                itemBuilder: (context, index) => AdminWidget(
                  onTapDelete: () {},
                  onTapUpdate: () {},
                ),
              ),
            ),
          ]),
        ));
  }
}

class AdminWidget extends StatelessWidget {
  final void Function()? onTapUpdate;
  final void Function()? onTapDelete;
  const AdminWidget({
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
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
          child: Row(
            children: [
              Column(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.fontColor3),
                            ),
                            Text(
                              "Admin",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.fontColor3),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButtom(
                          color: const Color(0xff9098E0),
                          height: 36.5.h,
                          title: "Update",
                          width: 143.w,
                          onTap: () {},
                        ),
                        SizedBox(width: 13.w),
                        CustomButtom(
                          color: const Color(0xffF11515),
                          height: 36.5.h,
                          title: "Delete",
                          width: 143.w,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ]),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                  Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank_sharp,
                        size: 20.dm,
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        "5262674748",
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
                        Icons.verified_outlined,
                        size: 20.dm,
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        "Dammam",
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
                        Icons.vpn_lock_rounded,
                        size: 20.dm,
                      ),
                      SizedBox(width: 12.w),
                      Text(
                        "Egypt",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColor.fontColor3),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 95.w)
            ],
          ),
        ),
      ),
    );
  }
}
