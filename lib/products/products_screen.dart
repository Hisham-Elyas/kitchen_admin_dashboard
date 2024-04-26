import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/menu/home_side_bar_menu_section.dart';
import '../responsive.dart';
import '../widget/menu/home_nav_bar.dart';
import 'section/product_add_update_section.dart';
import 'section/product_section.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

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
                    const HomeNavBar(title: "Products"),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 35.w, right: 5.w), //47* - 28*
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Product section
                        const ProductSecion(),
                        SizedBox(width: 18.w),
                        // Add + Update  Product section
                        const ProductAddUpdateSection()
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
