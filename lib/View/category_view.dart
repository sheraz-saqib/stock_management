import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';
import 'package:stock_management_system/Provider/ShowAndHideNavigation.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Widgets/app_bar.dart';
import 'package:stock_management_system/Utils/Widgets/BottomNavigation/bottomNavigationBar.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<dynamic> categories = [
    {
      'title': 'All Product',
      'subtitle': 'Total Product',
      'product_count': '20',
      'route': 'all_product_view'
    },
    {
      'title': 'All Categories',
      'subtitle': 'Total Categories',
      'product_count': '20 ',
      'route': 'show_category_view'
    },
    {
      'title': 'All Brands',
      'product_count': '20 ',
      'subtitle': 'Total Brands',
      'route': 'show_product'
    },
    {
      'title': 'All Store',
      'product_count': '20 ',
      'subtitle': 'Total Store',
      'route': 'show_product'
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
      appBar: const AppBarWidget(
        titleIcon: Icon(Iconsax.category_2, color: AppColors.whiteColor),
        title: 'More Pages',
      ),
      bottomNavigationBar: Consumer<ShowAndHideNavigationProvider>(
        builder: (context, value, child) {
          return AnimatedContainer(
              height: value.visibleNavigation ? 90 : 0,
              duration: const Duration(milliseconds: 200),
              child: Wrap(
                children: [
                  bottomNavigationBar(page2Active: true),
                ],
              ));
        },
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       children: [
            //         CategoryDashboardCard(
            //             context: context,
            //             text: 'Total Products',
            //             totalCount: '56'),
            //         const SizedBox(
            //           width: 20,
            //         ),
            //         CategoryDashboardCard(
            //             context: context,
            //             text: 'Total Categories',
            //             totalCount: '5'),
            //         const SizedBox(
            //           width: 20,
            //         ),
            //         CategoryDashboardCard(
            //             context: context,
            //             text: 'Total Store',
            //             totalCount: '56'),
            //         const SizedBox(
            //           width: 20,
            //         ),
            //         CategoryDashboardCard(
            //             context: context,
            //             text: 'Total Brands',
            //             totalCount: '16'),
            //       ],
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'All Pages',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                controller: showAndHidenavigationProvider.scrollController,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        onTap: () {
                          Navigator.pushNamed(
                              context, categories[index]['route']);
                        },
                        title: Text(
                          categories[index]['title'].toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        subtitle: Row(
                          children: [
                            Text(categories[index]['subtitle'] + '#',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: AppColors.greyTextColor)),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(categories[index]['product_count'],
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: AppColors.lightBlue)),
                          ],
                        ),
                        trailing: const Icon(
                          Iconsax.arrow_circle_right_copy,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
