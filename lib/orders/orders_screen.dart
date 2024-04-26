import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/menu/home_side_bar_menu_section.dart';
import '../responsive.dart';
import '../widget/menu/home_nav_bar.dart';
import 'section/orders_details_section.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

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
                    const HomeNavBar(title: "Orders"),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 35.w, right: 5.w), //47* - 28*
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Orders section
                        // const OrderSecion(),
                        // SizedBox(width: 18.w),
                        // Details + Delete -  Orders Details section
                        OrderDetailsSection()
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
