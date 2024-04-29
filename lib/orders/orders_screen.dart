import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../responsive.dart';
import '../widget/menu/home_nav_bar.dart';
import 'section/orders_section.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context)) const HomeNavBar(title: "Orders"),
          Padding(
            padding: EdgeInsets.only(left: 35.w, right: 5.w), //47* - 28*
            // Orders section
            child: const Expanded(child: OrderSecion()),
          ),
        ],
      ),
    );
  }
}
