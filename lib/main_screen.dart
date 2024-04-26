import 'package:flutter/material.dart';

import 'responsive.dart';
import 'widget/menu/home_side_bar_menu_section.dart';
import 'branches/branches_screen.dart';
import 'customer/customers_screen.dart';
import 'dashboard/dashboard_screen.dart';
import 'delivery/delivery_screen.dart';
import 'orders/orders_screen.dart';
import 'products/products_screen.dart';
import 'sittings/sittings_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List screen = [
      const DashboardScreen(),
      const ProductsScreen(),
      const CustomersScreen(),
      const BranchesScreen(),
      const OrdersScreen(),
      const DeliveryScreen(),
      const SittingsScreen(),
    ];
    // int numbTap = 0;
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
        drawer: SideMenuSection(),
        body: SafeArea(
            child: StatefulBuilder(
          builder: (context, mysetState) =>
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            if (Responsive.isDesktop(context))
              Expanded(flex: 2, child: SideMenuSection()),
            Expanded(flex: 8, child: screen[0])
          ]),
        )));
  }
}
