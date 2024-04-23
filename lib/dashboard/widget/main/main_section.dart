import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../responsive.dart';
import 'about_products_secion.dart';
import 'chart_secion.dart';
import 'circular_percent_secion.dart';
import 'home_nav_bar.dart';
import 'line_percent_secion.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if (Responsive.isDesktop(context)) const HomeNavBar(),
        Padding(
          padding: EdgeInsets.only(left: 35.w, right: 5.w), //47*
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Chart Secion Cart
                  ChartSecion(),
                  SizedBox(height: 20.h),

                  /// About Products Secion Cart
                  const AboutProductsSecion()
                ],
              ),
              SizedBox(width: 18.w),
              if (Responsive.isDesktop(context))
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Circular Percent Secion Cart
                    const CircularPercentSecion(),
                    SizedBox(height: 20.h),

                    /// Line Percent Secion Cart
                    const LinePercentSecion()
                  ],
                ),
            ],
          ),
        ),
      ]),
    );
  }
}
