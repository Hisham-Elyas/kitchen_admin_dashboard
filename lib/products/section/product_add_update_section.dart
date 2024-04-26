import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_color.dart';
import '../../widget/add_imgbox_widget.dart';
import '../../widget/custom_buttom_widget.dart';
import '../../widget/custom_text_form_field_widget.dart';

class ProductAddUpdateSection extends StatelessWidget {
  const ProductAddUpdateSection({super.key});

  @override
  Widget build(BuildContext context) {
    final listSize = ["S", "M", "L", "XL"];
    final List listTapSize = [];
    bool isComponentTap = true;
    return Material(
        color: AppColor.backgroundColor2,
        borderRadius: BorderRadius.circular(20.r),
        elevation: 1,
        child: Container(
            width: 372.w,
            height: 949.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// DropdownButton
                  SizedBox(
                    width: 333.w,
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

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Kitchen",
                      style: TextStyle(
                          color: AppColor.fontColor2,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),

                  // add img
                  AddImgBoxWidet(
                    width: 333.w,
                    height: 176.h,
                    onTap: () {},
                  ),

                  // Name Field
                  CustomTextFormField(
                    hintText: 'Name',
                    height: 53.h,
                    width: 333.w,
                  ),

                  ///  Select Size
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Size",
                      style: TextStyle(
                          color: AppColor.fontColor2,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  StatefulBuilder(
                    builder: (context, mysetState) => Wrap(
                      spacing: 19.w,
                      runSpacing: 12.h,
                      children: [
                        ...List.generate(
                          4,
                          (index) {
                            return InkWell(
                              onTap: () {
                                if (listTapSize.contains(listSize[index])) {
                                  listTapSize.remove(listSize[index]);
                                } else {
                                  listTapSize.add(listSize[index]);
                                }
                                mysetState(() {});
                              },
                              borderRadius: BorderRadius.circular(8.r),
                              child: Container(
                                width: 85.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                    color: listTapSize.contains(listSize[index])
                                        ? AppColor.mainColor
                                        : null,
                                    border: Border.all(
                                        color: AppColor.borderColor,
                                        width: 0.4.w),
                                    borderRadius: BorderRadius.circular(8.r)),
                                child: Text(
                                  listSize[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: AppColor.fontColor4,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  StatefulBuilder(
                    builder: (BuildContext context, setState) => Visibility(
                      visible: isComponentTap,
                      replacement: ComponentsExpandedWidget(
                        onTap: () {
                          isComponentTap = !isComponentTap;
                          setState(() {});
                        },
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Components

                          SizedBox(
                            width: 333.w,
                            height: 55.h,
                            child: Material(
                              elevation: 1,
                              borderRadius: BorderRadius.circular(15.r),
                              color: AppColor.backgroundColor2,
                              child: InkWell(
                                onTap: () {
                                  isComponentTap = !isComponentTap;
                                  setState(() {});
                                },
                                borderRadius: BorderRadius.circular(15.r),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.w,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Components",
                                        style: TextStyle(
                                            color: AppColor.fontColor3,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color(0xff656060),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15.h),
                          //  Price row
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Price",
                              style: TextStyle(
                                  color: AppColor.fontColor2,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Before",
                                style: TextStyle(
                                    color: AppColor.fontColor3,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(width: 15.w),
                              CustomTextFormField(
                                hintText: '',
                                height: 36.h, //*60 work good
                                width: 85.w,
                              ),
                              const Spacer(),
                              Text(
                                "After",
                                style: TextStyle(
                                    color: AppColor.fontColor3,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(width: 15.w),
                              CustomTextFormField(
                                hintText: '',
                                height: 36.h,
                                width: 85.w,
                              ),
                            ],
                          ),
                          SizedBox(height: 25.h),
                          // Description box
                          CustomTextFormField(
                            hintText: '',
                            height: 156.h,
                            width: 333.w,
                            maxLines: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
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

class ComponentsExpandedWidget extends StatelessWidget {
  final Function()? onTap;
  const ComponentsExpandedWidget({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    List components = [
      ["Beef", 272, true],
      ["Fries-S", 342, false],
      ["Cheese", 80, true],
      ["Garden Salad", 56, true],
      ["Ketchup", 11, false],
      ["Fries-M", 320, true],
    ];
    return SizedBox(
      width: 333.w,
      height: 332.h,
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(15.r),
        color: AppColor.backgroundColor2,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: onTap,
                child: Align(
                  alignment: Alignment.topRight,
                  child: const Icon(
                    Icons.arrow_drop_down_outlined,
                    color: Color(0xff656060),
                  ),
                ),
              ),
              SizedBox(height: 23.h),
              ...List.generate(
                components.length,
                (index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      components[index][0],
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w900,
                          color: components[index][2]
                              ? AppColor.mainColor
                              : AppColor.fontColor3),
                    ),
                    Text(
                      components[index][1].toString(),
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w900,
                          color: components[index][2]
                              ? AppColor.mainColor
                              : AppColor.fontColor3),
                    ),
                    SizedBox(
                      height: 15.h,
                      width: 15.w,
                      child: Checkbox(
                        fillColor:
                            const MaterialStatePropertyAll(AppColor.mainColor),
                        value: components[index][2],
                        onChanged: (value) {},
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
