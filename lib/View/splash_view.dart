import 'package:flutter/material.dart';

import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:stock_management_system/Routes/Routes_name.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Theme/App_font.dart';
import 'package:stock_management_system/Utils/Theme/Font_size.dart';
import 'package:svg_flutter/svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Future<void> NextScren() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, RoutesName.login_view);
  }

  @override
  void initState() {
    NextScren();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child:
                  SvgPicture.asset('assets/images/undraw_logistics_x-4-dc.svg'),
            ),
            Text(
              "Welcome to Application",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: AppColors.lightBlue, fontSize: AppFontSize.large),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Stock Management system",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: AppColors.lightBlue,
                  fontFamily: AppFont.medium,
                  fontSize: AppFontSize.medium),
            ),
            const SizedBox(
              height: 50,
            ),
            LoadingAnimationWidget.threeArchedCircle(
              color: AppColors.whiteTextColor,
              size: 29,
            )
          ],
        ),
      )),
    );
  }
}
