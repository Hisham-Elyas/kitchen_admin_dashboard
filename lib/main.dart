import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color.dart';
import 'branches/branches_screen.dart';
import 'customer/customers_screen.dart';
import 'dashboard/dashboard_screen.dart';
import 'delivery/delivery_screen.dart';
import 'login/login_screen.dart';
import 'main_screen.dart';
import 'orders/orders_screen.dart';
import 'products/products_screen.dart';
import 'sittings/sittings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1728, 1117),
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "ElMessiri",
          drawerTheme: const DrawerThemeData(
            backgroundColor: AppColor.backgroundColor2,
            surfaceTintColor: AppColor.backgroundColor2,
          ),
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColor.mainColor)
              .copyWith(background: AppColor.backgroundColor),
        ),
        home: const DashboardScreen(),
        // home: const ProductsScreen(),
        // home: const CustomersScreen(),
        // home: const OrdersScreen(),
        // home: const BranchesScreen(),
        // home: const DeliveryScreen(),
        // home: const SittingsScreen(),
        // home: const LoginScreen(),
        // // home: const MainScreen(),
      ),
    );
  }
}
