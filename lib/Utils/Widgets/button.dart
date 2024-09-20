import 'package:flutter/material.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Theme/Font_size.dart';

class AppButtons {
  // ignore: non_constant_identifier_names
  static ContainerButton(
      {required BuildContext context,
      required double width,
      double height = 45,
      Color? backColor = AppColors.lightBlue,
      Color? textColor = Colors.black,
      required String text,
      bool loading = false,
      required onTab}) {
    return InkWell(
      onTap: onTab,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: backColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: (loading)
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                )
              : Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: textColor, fontSize: AppFontSize.small),
                ),
        ),
      ),
    );
  }
}
