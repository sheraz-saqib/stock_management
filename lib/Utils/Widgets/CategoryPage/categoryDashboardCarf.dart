import 'package:flutter/material.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Theme/App_font.dart';
import 'package:stock_management_system/Utils/Theme/Font_size.dart';

Widget CategoryDashboardCard(
    {required BuildContext context,
    required String text,
    required String totalCount}) {
  return Container(
    decoration: BoxDecoration(
        color: AppColors.greyColor, borderRadius: BorderRadius.circular(20)),
    width: 100,
    height: 100,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontFamily: AppFont.medium, fontSize: AppFontSize.extraSmall),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            totalCount,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: AppFontSize.xl2Large,
                color: AppColors.lightGreyTextColor),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    ),
  );
}
