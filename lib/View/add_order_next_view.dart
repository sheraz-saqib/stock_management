import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stock_management_system/Utils/Function/Navigation.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Widgets/app_bar.dart';
import 'package:stock_management_system/Utils/Widgets/button.dart';
import 'package:stock_management_system/Utils/Widgets/textField.dart';
import 'package:stock_management_system/helper/validator.dart';

class AddOrderNextView extends StatefulWidget {
  // final Map? arg;
  const AddOrderNextView({
    super.key,
  });
  @override
  State<AddOrderNextView> createState() => _AddOrderNextViewState();
}

class _AddOrderNextViewState extends State<AddOrderNextView> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _unitPrice = TextEditingController(text: '0');
  final TextEditingController _totalPrice = TextEditingController(text: '0');
  final TextEditingController _varientController =
      TextEditingController(text: '0');
  final _formKey = GlobalKey<FormState>();

  String? selectVal;
  String? selectVarientType;
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
                  AppTextFields.serachDropDown(
                      label: "select the Product",
                      context: context,
                      dropDrownList: [
                        {'value': '100', 'name': 'meezan oil', 'id': '1'},
                        {'value': '200', 'name': 'egg', 'id': '2'},
                        {'value': '300', 'name': 'dalda oil', 'id': '3'},
                      ],
                      validator: fieldValidator,
                      onChanged: (val) {
                        _totalPrice.clear();
                        final value = int.parse(val['value']);
                        final totalPrice =
                            value * int.parse(_varientController.text);
                        _unitPrice.text = value.toString();
                        _totalPrice.text = (value * totalPrice).toString();

                        setState(() {});
                      }),
                  AppTextFields.dropDown(
                    onChange: (val) {
                      selectVarientType = val;
                      setState(() {});
                    },
                    label: selectVarientType ?? "Select the  Varient",
                    context: context,
                    dropDrownList: ['Qunatity', 'Kg', 'dozen'],
                  ),
                  AppTextFields.simpleTextField(
                    context: context,
                    label: selectVarientType ?? "Varient ",
                    enable: selectVarientType != null ? true : false,
                    controller: _varientController,
                    // autoFocus: true,
                    maxLength: 6,
                    validator: fieldValidator,
                    onChange: (val) {
                      final value = int.parse(_unitPrice.text);
                      _totalPrice.text = (value * int.parse(val)).toString();

                      _varientController.text = val;
                      setState(() {});
                    },
                    formatter: "number",
                  ),
                  // AppTextFields.serachDropDown(
                  //     label: "select the suppliers",
                  //     context: context,
                  //     dropDrownList: ['sheraz', 'ali', 'khan'],
                  //     validator: fieldValidator,
                  //     onChanged: (val) {
                  //       print(val);
                  //     }),
                  AppTextFields.simpleTextField(
                    context: context,
                    label: "Unit price",
                    controller: _unitPrice,
                    readOnly: true,
                  ),
                  AppTextFields.simpleTextField(
                    context: context,
                    label: "Total price",
                    controller: _totalPrice,
                    readOnly: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppButtons.ContainerButton(
                      context: context,
                      text: 'Next',
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
