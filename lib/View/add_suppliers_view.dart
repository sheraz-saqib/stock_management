import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stock_management_system/Utils/Function/Navigation.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Widgets/app_bar.dart';
import 'package:stock_management_system/Utils/Widgets/button.dart';
import 'package:stock_management_system/Utils/Widgets/textField.dart';
import 'package:stock_management_system/helper/validator.dart';

class AddSuppliersView extends StatefulWidget {
  const AddSuppliersView({super.key});
  @override
  State<AddSuppliersView> createState() => AddSuppliersViewState();
}

class AddSuppliersViewState extends State<AddSuppliersView> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? selectVal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBarWidget(
        title: "Add Suppliers",
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
                      label: "Name",
                      controller: _controller,
                      validator: fieldValidator,
                      autoFocus: true),
                  AppTextFields.simpleTextField(
                    context: context,
                    label: "Email",
                    controller: _email,
                    formatter: 'email',
                    validator: emailValidator,
                    inputType: TextInputType.emailAddress,
                    autoFocus: true,
                  ),
                  AppTextFields.simpleTextField(
                      context: context,
                      label: "Phone Number",
                      controller: _controller,
                      autoFocus: true,
                      maxLength: 11,
                      validator: fieldValidator,
                      formatter: "number"),
                  AppTextFields.simpleTextField(
                      context: context,
                      label: "Cnic",
                      controller: _controller,
                      validator: fieldValidator,
                      autoFocus: true),
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
                      text: 'Add Supplier',
                      onTab: () {
                        if (_formKey.currentState!.validate()) {
                          print('Email is valid: ${_email.text}');
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
      ),
    );
  }
}
