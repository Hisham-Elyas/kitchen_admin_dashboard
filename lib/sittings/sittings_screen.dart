import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../responsive.dart';
import '../widget/menu/home_nav_bar.dart';
import 'section/sittings_add_update_section.dart';
import 'section/sittings_section.dart';

class SittingsScreen extends StatelessWidget {
  const SittingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context)) const HomeNavBar(title: "Admin"),
          Padding(
            padding: EdgeInsets.only(left: 35.w, right: 5.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Sittings  Section
                const Expanded(flex: 3, child: SittingsSection()),

                /// Sittings Add Update Section

                SizedBox(width: 18.w),
                const Expanded(flex: 1, child: SittingsAddUpdateSection()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
