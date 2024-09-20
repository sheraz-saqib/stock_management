import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';
import 'package:stock_management_system/Provider/ToggleProvider.dart';
import 'package:stock_management_system/Routes/Routes_name.dart';
import 'package:stock_management_system/Utils/Function/Navigation.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Widgets/BottomNavigation/navigationButton.dart';

Widget bottomNavigationBar({
  bool page1Active = false,
  bool page2Active = false,
  bool page3Active = false,
  bool page4Active = false,
  bool page5Active = false,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
    child: Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.greyColor),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Consumer<Toggleprovider>(
              builder: (context, value, child) {
                return NavigationButton(
                    icon: Iconsax.home_2,
                    activeIcon: Iconsax.home_2_copy,
                    active: page1Active,
                    ontab: () {
                      page1Active == false
                          ? Navigate.replaceView(
                              context: context, route: RoutesName.home_view)
                          : '';
                    });
              },
            ),
            Consumer<Toggleprovider>(
              builder: (context, value, child) {
                return NavigationButton(
                    icon: Iconsax.category_2,
                    activeIcon: Iconsax.category_2_copy,
                    active: page2Active,
                    ontab: () {
                      page2Active == false
                          ? Navigate.replaceView(
                              context: context, route: RoutesName.category_view)
                          : '';
                    });
              },
            ),
            Consumer<Toggleprovider>(
              builder: (context, value, child) {
                return NavigationButton(
                    icon: Iconsax.shop,
                    activeIcon: Iconsax.shop_copy,
                    active: page3Active,
                    ontab: () {
                      value.setToggleValue();
                    });
              },
            ),
            Consumer<Toggleprovider>(
              builder: (context, value, child) {
                return NavigationButton(
                    icon: Iconsax.profile_circle,
                    activeIcon: Iconsax.profile_circle_copy,
                    active: page4Active,
                    ontab: () {
                      value.setToggleValue();
                    });
              },
            ),
          ],
        ),
      ),
    ),
  );
}
