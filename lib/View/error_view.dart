import 'package:flutter/material.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bodyColor,
      body: Center(
        child: Text(
          'no page Exists',
          style: TextStyle(color: Colors.amber),
        ),
      ),
    );
  }
}
