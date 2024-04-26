import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../responsive.dart';
import '../widget/menu/home_nav_bar.dart';
import '../widget/menu/home_side_bar_menu_section.dart';
import 'section/branches_add_update_section.dart';
import 'section/branches_section.dart';

class BranchesScreen extends StatelessWidget {
  const BranchesScreen({super.key});

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
                    const HomeNavBar(title: "Branches"),
                  Padding(
                    padding: EdgeInsets.only(left: 35.w, right: 5.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Branches  Section
                        const BranchesSection(),
                        //  Branches Add Update Section

                        SizedBox(width: 18.w),
                        const BranchesAddUpdateSection(),
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
