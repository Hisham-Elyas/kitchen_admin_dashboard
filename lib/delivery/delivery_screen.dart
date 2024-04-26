import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../responsive.dart';
import '../widget/menu/home_nav_bar.dart';
import '../widget/menu/home_side_bar_menu_section.dart';
import 'section/delivery_add_update_section.dart';
import 'section/delivery_section.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            Expanded(flex: 2, child: SideMenuSection()),
          Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (Responsive.isDesktop(context))
                    const HomeNavBar(title: "Delivery"),
                  Padding(
                    padding: EdgeInsets.only(left: 35.w, right: 5.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Delivery  Section
                        const DeliverySection(),
                        // Delivery Add Update  Section
                        SizedBox(width: 18.w),
                        const DeliveryAddUpdateSection(),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
