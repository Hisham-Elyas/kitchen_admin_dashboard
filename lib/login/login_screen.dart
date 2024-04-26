import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../app_color.dart';
import '../widget/custom_buttom_widget.dart';
import '../widget/custom_text_form_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/png/Rectangl_backgrwnd.png"),
                fit: BoxFit.cover)),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          SizedBox(height: 45.h),
          Image.asset(
            "assets/png/welcome-photos-png.png",
            height: 400.h,
            width: 610.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/svg/shopcar.svg",
                  width: 370.w, height: 300.h),
              SizedBox(width: 130.w),
              Column(
                children: [
                  CustomTextFormField(
                    hintText: "Username",
                    width: 300.w,
                    height: 45.h, //*60 work good
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFormField(
                    hintText: "password",
                    width: 300.w,
                    height: 45.h,
                  ),
                  SizedBox(height: 34.h),
                  CustomButtom(
                      width: 300.w,
                      height: 45.h,
                      onTap: () {},
                      color: AppColor.mainColor,
                      title: "login")
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
