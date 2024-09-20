import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stock_management_system/Routes/Routes_name.dart';
import 'package:stock_management_system/Utils/Function/Navigation.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Widgets/app_bar.dart';
import 'package:stock_management_system/Utils/Widgets/button.dart';
import 'package:stock_management_system/Utils/Widgets/textField.dart';
import 'package:stock_management_system/helper/validator.dart';

class AddOrderView extends StatefulWidget {
  const AddOrderView({super.key});

  @override
  State<AddOrderView> createState() => _AddOrderViewState();
}

class _AddOrderViewState extends State<AddOrderView> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? selectVal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBarWidget(
        title: "Add Order",
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
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  AppTextFields.simpleTextField(
                      context: context,
                      label: "Customer Name",
                      controller: _controller,
                      validator: fieldValidator,
                      autoFocus: true),
                  AppTextFields.simpleTextField(
                      context: context,
                      label: "Phone Number",
                      controller: _controller,
                      autoFocus: true,
                      maxLength: 11,
                      validator: fieldValidator,
                      formatter: "number"),
                  // AppTextFields.serachDropDown(
                  //     label: "select the supplier",
                  //     context: context,
                  //     dropDrownList: ['sheraz', 'ali', 'khan'],
                  //     validator: fieldValidator,
                  //     onChanged: (val) {
                  //       print(val);
                  //     }),
                  AppTextFields.longTextField(
                      context: context,
                      label: "Address",
                      validator: fieldValidator,
                      controller: _controller,
                      autoFocus: true),
                  const SizedBox(
                    height: 10,
                  ),
                  AppButtons.ContainerButton(
                      context: context,
                      text: 'Next',
                      onTab: () {
                        // if (_formKey.currentState!.validate()) {
                        //   print('Email is valid: ${_email.text}');
                        // }
                        Navigate.NextView(
                            context: context,
                            route: RoutesName.add_order_next_view,
                            arrguments: {"email": _email});
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
      ),
    );
  }
}
