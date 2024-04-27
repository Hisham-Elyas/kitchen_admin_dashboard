import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_color.dart';
import '../../widget/add_imgbox_widget.dart';
import '../../widget/custom_buttom_widget.dart';
import '../../widget/custom_text_form_field_widget.dart';

class DeliveryAddUpdateSection extends StatelessWidget {
  const DeliveryAddUpdateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: AppColor.backgroundColor2,
        borderRadius: BorderRadius.circular(20.r),
        elevation: 1,
        child: Container(
            // width: 372.w,
            height: 949.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
            child: Form(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Add Delivery",
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
                  CustomTextFormField(
                    hintText: 'License',
                    height: 53.h,
                    width: 333.w,
                  ),
                  SizedBox(height: 64.h),

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
