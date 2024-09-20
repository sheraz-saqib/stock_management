import 'package:flutter/material.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';

Widget NavigationButton(
    {required IconData icon,
    required IconData activeIcon,
    bool active = false,
    ontab}) {
  return Container(
    width: 70,
    height: 50,
    margin: const EdgeInsets.only(left: 2, right: 2),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: ontab,
          child: Center(
            child: Icon(
              active ? icon : activeIcon,
              size: 30,
              color: AppColors.whiteColor,
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        active
            ? Container(
                width: 30,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.lightBlue,
                ),
              )
            : Container()
      ],
    ),
  );
}
