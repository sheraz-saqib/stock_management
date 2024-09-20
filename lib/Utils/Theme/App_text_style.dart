import 'package:flutter/material.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Theme/App_font.dart';
import 'package:stock_management_system/Utils/Theme/Font_size.dart';

class AppTextStyle {
  static const TextStyle headLineSmall = TextStyle(
      fontFamily: AppFont.regular,
      fontSize: AppFontSize.small,
      color: AppColors.whiteTextColor);
  static const TextStyle headLineMedium = TextStyle(
      fontFamily: AppFont.medium,
      fontSize: AppFontSize.medium,
      color: AppColors.whiteTextColor);

  static const TextStyle headLineLarge = TextStyle(
      fontFamily: AppFont.medium,
      fontSize: AppFontSize.extraMedium,
      color: AppColors.whiteTextColor);
}
