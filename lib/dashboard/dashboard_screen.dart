import 'package:flutter/material.dart';

import 'responsive.dart';
import 'widget/main/main_section.dart';
import 'widget/menu/side_menu_section.dart';

class DashboardScreen extends StatelessWidget {
  // final Widget mainSection;
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: Colors.grey,
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
              ),
            ),
      drawer: const SideMenuSection(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(flex: 2, child: SideMenuSection()),
            const Expanded(flex: 8, child: MainSection()),
          ],
        ),
      ),
    );
  }
}
