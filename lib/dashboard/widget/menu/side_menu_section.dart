import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../app_color.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: const AppColor.backgroundColor2,
      child: SafeArea(
          child: SizedBox(
        height: 1117.h,
        width: 315.w,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 3,
              child: Center(
                  child: Text(
                "Kitchen",
                style: TextStyle(
                    color: AppColor.fontColor2,
                    fontSize: 34.sp,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(8, (i) {
                        switch (i) {
                          case 0:
                            return SideMenuButton(
                              svgAssetName: "assets/svg/Dashboard.svg",
                              text: 'Dashboard',
                              isTap: true,
                              onPressed: () {},
                            );

                          case 1:
                            return SideMenuButton(
                              svgAssetName: "assets/svg/Products.svg",
                              text: 'Products',
                              onPressed: () {},
                            );
                          case 2:
                            return SideMenuButton(
                              svgAssetName: "assets/svg/users.svg",
                              text: 'Customers',
                              onPressed: () {},
                            );
                          case 3:
                            return SideMenuButton(
                              svgAssetName: "assets/svg/Orders.svg",
                              text: 'Orders',
                              onPressed: () {},
                            );
                          case 4:
                            return SideMenuButton(
                              svgAssetName: "assets/svg/shipping_truck.svg",
                              text: 'Shipments',
                              onPressed: () {},
                            );
                          case 5:
                            return SideMenuButton(
                              svgAssetName: "assets/svg/Delivery.svg",
                              text: 'Delivery',
                              onPressed: () {},
                            );
                          case 6:
                            return SideMenuButton(
                              svgAssetName: "assets/svg/Setting.svg",
                              text: 'Settings',
                              onPressed: () {},
                            );
                          case 7:
                            return SideMenuButton(
                              svgAssetName: "assets/svg/logout.svg",
                              text: 'Logout',
                              onPressed: () {},
                            );

                          default:
                            return throw Error();
                        }
                      }),
                    ]),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class SideMenuButton extends StatelessWidget {
  final void Function()? onPressed;
  final String svgAssetName;
  final String text;
  final bool isTap;
  const SideMenuButton({
    super.key,
    this.onPressed,
    required this.svgAssetName,
    required this.text,
    this.isTap = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 52.h),
      child: TextButton.icon(
          onPressed: onPressed, //CDCDCD
          icon: SvgPicture.asset(
            svgAssetName,
            color: isTap ? AppColor.mainColor : AppColor.fontColor1,
            // height: 30.h,
            // width: 30.h,
          ),
          label: Text(
            text,
            style: TextStyle(
                color: isTap ? AppColor.mainColor : AppColor.fontColor1,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
