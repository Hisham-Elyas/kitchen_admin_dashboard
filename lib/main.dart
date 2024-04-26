import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color.dart';
import 'main_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1728, 1117),
      builder: (context, child) => GetMaterialApp(
        title: 'kitchen Admin Dashboard',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // fontFamily: "ElMessiri",
          drawerTheme: const DrawerThemeData(
            backgroundColor: AppColor.backgroundColor2,
            surfaceTintColor: AppColor.backgroundColor2,
          ),
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColor.mainColor)
              .copyWith(background: AppColor.backgroundColor),
        ),
        home: const MainScreen(),
      ),
    );
  }
}
