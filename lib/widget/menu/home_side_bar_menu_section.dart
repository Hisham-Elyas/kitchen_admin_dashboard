import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../app_color.dart';
import '../../page_controller.dart';

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
                child: GetBuilder<PagesController>(
                  builder: (controller) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...List.generate(8, (i) {
                          switch (i) {
                            case 0:
                              return SideMenuButton(
                                svgAssetName: "assets/svg/Dashboard.svg",
                                text: 'Dashboard',
                                numTap: controller.pageNum == i,
                                onPressed: () {
                                  controller.goToPage(i);
                                },
                              );

                            case 1:
                              return SideMenuButton(
                                svgAssetName: "assets/svg/Products.svg",
                                text: 'Products',
                                numTap: controller.pageNum == i,
                                onPressed: () {
                                  controller.goToPage(i);
                                },
                              );
                            case 2:
                              return SideMenuButton(
                                svgAssetName: "assets/svg/users.svg",
                                text: 'Customers',
                                numTap: controller.pageNum == i,
                                onPressed: () {
                                  controller.goToPage(i);
                                },
                              );
                            case 3:
                              return SideMenuButton(
                                svgAssetName: "assets/svg/branches.svg",
                                text: 'Branches',
                                numTap: controller.pageNum == i,
                                onPressed: () {
                                  controller.goToPage(i);
                                },
                              );

                            case 4:
                              return SideMenuButton(
                                svgAssetName: "assets/svg/Orders.svg",
                                text: 'Orders',
                                numTap: controller.pageNum == i,
                                onPressed: () {
                                  controller.goToPage(i);
                                },
                              );
                            case 5:
                              return SideMenuButton(
                                svgAssetName: "assets/svg/Delivery.svg",
                                text: 'Delivery',
                                numTap: controller.pageNum == i,
                                onPressed: () {
                                  controller.goToPage(i);
                                },
                              );
                            case 6:
                              return SideMenuButton(
                                svgAssetName: "assets/svg/Setting.svg",
                                text: 'Settings',
                                numTap: controller.pageNum == i,
                                onPressed: () {
                                  controller.goToPage(i);
                                },
                              );
                            case 7:
                              return SideMenuButton(
                                svgAssetName: "assets/svg/logout.svg",
                                text: 'Logout',
                                numTap: controller.pageNum == i,
                                onPressed: () {
                                  controller.goToPage(i);
                                },
                              );

                            default:
                              return throw Error();
                          }
                        }),
                      ]),
                ),
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
  final bool numTap;
  const SideMenuButton({
    super.key,
    this.onPressed,
    required this.svgAssetName,
    required this.text,
    this.numTap = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 52.h),
      child: TextButton.icon(
          onPressed: onPressed, //CDCDCD
          icon: SvgPicture.asset(
            svgAssetName,
            color: numTap ? AppColor.mainColor : AppColor.fontColor1,
            // height: 30.h,
            // width: 30.h,
          ),
          label: Text(
            text,
            style: TextStyle(
                color: numTap ? AppColor.mainColor : AppColor.fontColor1,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
