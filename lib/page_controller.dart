import 'package:get/get.dart';
import 'branches/branches_screen.dart';
import 'customer/customers_screen.dart';
import 'dashboard/dashboard_screen.dart';
import 'delivery/delivery_screen.dart';
import 'orders/orders_screen.dart';
import 'products/products_screen.dart';
import 'sittings/sittings_screen.dart';

class PagesController extends GetxController {
  final List screen = [
    const DashboardScreen(),
    const ProductsScreen(),
    const CustomersScreen(),
    const BranchesScreen(),
    const OrdersScreen(),
    const DeliveryScreen(),
    const SittingsScreen(),
    const SittingsScreen(),
  ];
  int pageNum = 0;
  goToPage(int page) {
    pageNum = page;
    update();
  }
}
