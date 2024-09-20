import 'package:flutter/material.dart';
import 'package:stock_management_system/Routes/Routes_name.dart';
import 'package:stock_management_system/View/add_order_next_view.dart';
import 'package:stock_management_system/View/add_order_view.dart';
import 'package:stock_management_system/View/add_products_view.dart';
import 'package:stock_management_system/View/add_suppliers_view.dart';
import 'package:stock_management_system/View/all_product_view.dart';
import 'package:stock_management_system/View/category_view.dart';
import 'package:stock_management_system/View/error_view.dart';
import 'package:stock_management_system/View/home_view.dart';
import 'package:stock_management_system/View/login_view.dart';
import 'package:stock_management_system/View/show_category_view.dart';
import 'package:stock_management_system/View/splash_view.dart';
import 'package:stock_management_system/View/add_category_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case RoutesName.home_view:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      case RoutesName.add_supplier_view:
        return MaterialPageRoute(
          builder: (context) => const AddSuppliersView(),
        );
      case RoutesName.all_product_view:
        return MaterialPageRoute(
          builder: (context) => const AllProductView(),
        );
      case RoutesName.add_order_view:
        return MaterialPageRoute(
          builder: (context) => const AddOrderView(),
        );
      case RoutesName.add_order_next_view:
        // final arg = setting.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => AddOrderNextView(
            
          ),
        );
      case RoutesName.login_view:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
        );
      case RoutesName.splash_view:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
      case RoutesName.category_view:
        return MaterialPageRoute(
          builder: (context) => const CategoryView(),
        );
      case RoutesName.add_category_view:
        return MaterialPageRoute(
          builder: (context) => const AddCategory(),
        );
      case RoutesName.show_category_view:
        return MaterialPageRoute(
          builder: (context) => const ShowCategoryView(),
        );
      case RoutesName.add_products_view:
        return MaterialPageRoute(
          builder: (context) => const AddProductsView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const ErrorView(),
        );
    }
  }
}
