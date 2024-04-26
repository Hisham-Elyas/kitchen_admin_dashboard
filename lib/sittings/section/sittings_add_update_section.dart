import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_color.dart';
import '../../widget/add_imgbox_widget.dart';
import '../../widget/custom_buttom_widget.dart';
import '../../widget/custom_text_form_field_widget.dart';

class SittingsAddUpdateSection extends StatelessWidget {
  const SittingsAddUpdateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: AppColor.backgroundColor2,
        borderRadius: BorderRadius.circular(20.r),
        elevation: 1,
        child: Container(
            width: 372.w,
            height: 949.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
            child: Form(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Add Admin",
                      style: TextStyle(
                          color: AppColor.fontColor2,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  // add img
                  AddImgBoxWidet(
                    width: 333.w,
                    height: 176.h,
                    onTap: () {},
                  ),
                  SizedBox(height: 23.h),
                  // form Field

                  CustomTextFormField(
                    hintText: 'Name',
                    height: 53.h,
                    width: 333.w,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFormField(
                    hintText: 'Email',
                    height: 53.h,
                    width: 333.w,
                  ),

                  SizedBox(height: 20.h),
                  CustomTextFormField(
                    hintText: 'Password',
                    height: 53.h,
                    width: 333.w,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFormField(
                    hintText: 'Nationality',
                    height: 53.h,
                    width: 333.w,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFormField(
                    hintText: 'Phone',
                    height: 53.h,
                    width: 333.w,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFormField(
                    hintText: 'ID',
                    height: 53.h,
                    width: 333.w,
                  ),
                  SizedBox(height: 20.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// DropdownButton  Role
                      SizedBox(
                        width: 157.w,
                        height: 55.h,
                        child: Material(
                          borderRadius: BorderRadius.circular(15.r),
                          color: AppColor.backgroundColor3,
                          child: DropdownButton(
                            isExpanded: true,
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            dropdownColor: AppColor.backgroundColor2,
                            elevation: 2,
                            // value: 1,
                            iconSize: 24.w,
                            underline: const SizedBox(),
                            borderRadius: BorderRadius.circular(10.r),
                            hint: Text(
                              "Role",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.fontColor2),
                            ),
                            items: [
                              DropdownMenuItem(
                                value: 1,
                                child: Text(
                                  "Admin",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.fontColor2),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text(
                                  "Super Admin",
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

                      /// DropdownButton  Branch
                      SizedBox(
                        width: 157.w,
                        height: 55.h,
                        child: Material(
                          borderRadius: BorderRadius.circular(15.r),
                          color: AppColor.backgroundColor3,
                          child: DropdownButton(
                            isExpanded: true,
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            dropdownColor: AppColor.backgroundColor2,
                            elevation: 2,
                            // value: 1,
                            iconSize: 24.w,
                            underline: const SizedBox(),
                            borderRadius: BorderRadius.circular(10.r),
                            hint: Text(
                              "Branch",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.fontColor2),
                            ),
                            items: [
                              DropdownMenuItem(
                                value: 1,
                                child: Text(
                                  "Branch 1",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.fontColor2),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 2,
                                child: Text(
                                  "Branch 2",
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
                    ],
                  ),
                  SizedBox(height: 50.h),

                  CustomButtom(
                    width: 180.w,
                    height: 43.h,
                    color: const Color(0xff4BAA1E),
                    title: "Add",
                    onTap: () {},
                  )
                ],
              ),
            )));
  }
}
