import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stock_management_system/Routes/Routes_name.dart';
import 'package:stock_management_system/Utils/Function/Navigation.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Widgets/app_bar.dart';
import 'package:stock_management_system/Utils/Widgets/button.dart';
import 'package:stock_management_system/Utils/Widgets/textField.dart';

class AddProductsView extends StatefulWidget {
  const AddProductsView({super.key});

  @override
  State<AddProductsView> createState() => _AddProductsViewState();
}

class _AddProductsViewState extends State<AddProductsView> {
  final TextEditingController _controller = TextEditingController();
  String? selectVal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBarWidget(
        title: "Add Product",
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                AppTextFields.simpleTextField(
                    context: context,
                    label: "Product Name",
                    controller: _controller,
                    autoFocus: true),
                AppTextFields.dropDown(
                  onChange: (val) {
                    selectVal = val;
                    setState(() {});
                  },
                  label: selectVal ?? "Select the category",
                  context: context,
                  dropDrownList: ['machine', 'mobile', 'food', 'electronics'],
                ),
                AppTextFields.simpleTextField(
                    context: context,
                    label: "Price",
                    controller: _controller,
                    autoFocus: true),
                AppTextFields.dropDown(
                  onChange: (val) {
                    selectVal = val;
                    setState(() {});
                  },
                  label: selectVal ?? "Select the Brand",
                  context: context,
                  dropDrownList: ['apple', 'food', 'electronics'],
                ),
                AppTextFields.dropDown(
                  onChange: (val) {
                    selectVal = val;
                    setState(() {});
                  },
                  label: selectVal ?? "Select the Status",
                  context: context,
                  dropDrownList: ['Active', 'Refuse', 'Pending'],
                ),
                AppTextFields.dropDown(
                  onChange: (val) {
                    selectVal = val;
                    setState(() {});
                  },
                  label: selectVal ?? "Select the category",
                  context: context,
                  dropDrownList: ['Status', 'hello', 'world', 'hello'],
                ),
                AppTextFields.longTextField(
                    context: context,
                    label: "Description (optional)",
                    controller: _controller,
                    autoFocus: true),
                const SizedBox(
                  height: 10,
                ),
                AppButtons.ContainerButton(
                    context: context,
                    text: 'Add Product',
                    onTab: () {
                      if (kDebugMode) {
                        print(selectVal);
                      }
                    },
                    width: 330,
                    height: 45,
                    loading: false,
                    backColor: AppColors.lightBlue,
                    textColor: AppColors.bodyColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
