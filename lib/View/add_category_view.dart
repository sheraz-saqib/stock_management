import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stock_management_system/Routes/Routes_name.dart';
import 'package:stock_management_system/Utils/Function/Navigation.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Widgets/app_bar.dart';
import 'package:stock_management_system/Utils/Widgets/button.dart';
import 'package:stock_management_system/Utils/Widgets/textField.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({super.key});

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBarWidget(
        title: "Add Aategory",
        leadingIcon: IconButton(
          onPressed: () {
            Navigate.back(context: context);
          },
          icon: const Icon(Iconsax.arrow_left_2_copy,
              color: AppColors.whiteColor),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextFields.simpleTextField(
                  context: context,
                  label: "Category Name",
                  controller: _controller,
                  autoFocus: true),
              const SizedBox(
                height: 18,
              ),
              AppButtons.ContainerButton(
                  context: context,
                  text: 'Add',
                  onTab: () {
                    Navigator.pushReplacementNamed(
                        context, RoutesName.category_view);
                  },
                  width: 330,
                  height: 45,
                  loading: false,
                  backColor: AppColors.lightBlue,
                  textColor: AppColors.bodyColor)
            ],
          ),
        ),
      ),
    );
  }
}
