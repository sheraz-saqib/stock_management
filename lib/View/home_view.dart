import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';
import 'package:stock_management_system/Provider/ShowAndHideNavigation.dart';

import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Widgets/app_bar.dart';
import 'package:stock_management_system/Utils/Widgets/BottomNavigation/bottomNavigationBar.dart';
import 'package:stock_management_system/Utils/Widgets/Dashborad/DashboardCard.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List dashBoardList = [
    {
      'title': 'All Products',
      'value': '90',
    },
    {
      'title': 'All Categories',
      'value': '20',
    },
    {
      'title': 'New Orders',
      'value': '80',
    },
    {
      'title': 'Pending Orders',
      'value': '70',
    },
    {
      'title': 'In Progress Orders',
      'value': '60',
    },
    {
      'title': 'Delivered Order',
      'value': '200',
    },
    {
      'title': 'Suppliers ',
      'value': '50',
    },
  ];
  @override
  void initState() {
    super.initState();
    final showAndHidenavigationProvider =
        Provider.of<ShowAndHideNavigationProvider>(context, listen: false);
    showAndHidenavigationProvider.scrollAnimationNav();
  }

  @override
  Widget build(BuildContext context) {
    final showAndHidenavigationProvider =
        Provider.of<ShowAndHideNavigationProvider>(context, listen: true);
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBarWidget(
        title: 'Dashboard',
        titleIcon:
            const Icon(Iconsax.element_equal, color: AppColors.whiteColor),
        action: [
          IconButton(
            icon: const Icon(
              Iconsax.search_normal_copy,
              color: AppColors.whiteColor,
            ),
            onPressed: () {
              print('hello');
            },
          ),
        ],
      ),
      bottomNavigationBar: Consumer<ShowAndHideNavigationProvider>(
        builder: (context, value, child) {
          return AnimatedContainer(
              height: value.visibleNavigation ? 90 : 0,
              duration: const Duration(milliseconds: 200),
              child: Wrap(
                children: [
                  bottomNavigationBar(page1Active: true),
                ],
              ));
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
            controller: showAndHidenavigationProvider.scrollController,
            itemCount: dashBoardList.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250, mainAxisExtent: 120),
            itemBuilder: (context, index) {
              return DashboardBoardCard(
                  context: context,
                  title: dashBoardList[index]['title'],
                  value: dashBoardList[index]['value']);
            },
          ),
        ),
      ),
    );
  }
}
