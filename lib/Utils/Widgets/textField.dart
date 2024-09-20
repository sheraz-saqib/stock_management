import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Theme/App_font.dart';

class AppTextFields {
  static simpleTextField(
      {required BuildContext context,
      required String label,
      String? hintText,
      bool readOnly = false,
      TextInputType? inputType,
      Icon? prefixIcon,
      IconButton? suffixIcon,
      bool obscureText = false,
      bool autoFocus = false,
      String formatter = 'text',
      int? maxLength,
      bool enable = true,
      validator,
      onChange,
      required TextEditingController controller}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      width: 330,
      child: TextFormField(
        readOnly: readOnly,
        maxLength: maxLength,
        autofocus: autoFocus,
        controller: controller,
        onChanged: onChange,
        cursorColor: AppColors.whiteColor,
        cursorWidth: 1.5,
        obscureText: obscureText,
        obscuringCharacter: '*',
        validator: validator,
        enabled: enable,
        inputFormatters: [
          formatter == 'number'
              ? FilteringTextInputFormatter.digitsOnly
              : formatter == 'email'
                  ? FilteringTextInputFormatter.allow(
                      RegExp(r'[a-zA-Z0-9@._-]'))
                  : FilteringTextInputFormatter.singleLineFormatter,
        ],
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontSize: 15, color: AppColors.whiteColor),
        decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    BorderSide(color: AppColors.whiteColor.withOpacity(.1))),
            counterText: '',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.whiteTextColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.greyColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.whiteColor)),
            labelStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontFamily: AppFont.medium,
                color: !enable ? AppColors.greyColor : AppColors.whiteColor),
            contentPadding: const EdgeInsets.all(20),
            label: Text(label),
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            prefixIconColor: AppColors.whiteColor,
            suffixIconColor: AppColors.whiteColor),
      ),
    );
  }

  static dropDown({
    required BuildContext context,
    required dropDrownList,
    required onChange,
    required String label,
    bool enable = true,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      width: 330,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: AppColors.whiteColor,
          border: Border.all(color: AppColors.greyColor)),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: DropdownButton(
            dropdownColor: AppColors.bodyColor,
            borderRadius: BorderRadius.circular(12),
            elevation: 0,
            hint: Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: 13.3),
            ),
            isExpanded: true,
            icon: const Icon(Icons.arrow_drop_down),
            disabledHint: Text(
              label,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: 13.3, color: AppColors.greyColor),
            ),
            iconSize: 18,
            underline: const SizedBox.shrink(),
            style: Theme.of(context).textTheme.headlineSmall,
            onChanged: enable == true ? onChange : null,
            items: List<DropdownMenuItem<String>>.generate(
              dropDrownList.length,
              (index) => DropdownMenuItem<String>(
                value: dropDrownList[index],
                child: Text(dropDrownList[index].toString()),
              ),
            ),
          )),
    );
  }

  static longTextField(
      {required BuildContext context,
      required String label,
      String? hintText,
      TextInputType? inputType,
      Icon? prefixIcon,
      IconButton? suffixIcon,
      bool obscureText = false,
      bool autoFocus = false,
      validator,
      required TextEditingController controller}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      width: 330,
      child: TextFormField(
        maxLines: 3,
        autofocus: autoFocus,
        controller: controller,
        cursorColor: AppColors.whiteColor,
        cursorWidth: 1.5,
        obscureText: obscureText,
        validator: validator,
        obscuringCharacter: '*',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontSize: 15, color: AppColors.whiteColor),
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.whiteTextColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.greyColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.whiteColor)),
            labelStyle: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontFamily: AppFont.medium),
            contentPadding: const EdgeInsets.all(20),
            label: Text(label),
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            prefixIconColor: AppColors.whiteColor,
            suffixIconColor: AppColors.whiteColor),
      ),
    );
  }

  static serachDropDown(
      {required BuildContext context,
      required List<Map<String, dynamic>> dropDrownList,
      required String label,
      required onChanged,
      bool enable = true,
      validator}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      width: 330,
      child: DropdownSearch<Map<String, dynamic>>(
        items: dropDrownList,
        validator: validator,
        dropdownDecoratorProps: DropDownDecoratorProps(
            baseStyle: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: AppColors.whiteColor),
            dropdownSearchDecoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                        const BorderSide(color: AppColors.whiteTextColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.greyColor)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: AppColors.whiteColor)),
                labelStyle: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontFamily: AppFont.medium),
                contentPadding: const EdgeInsets.all(20),
                label: Text(label),
                prefixIconColor: AppColors.whiteColor,
                suffixIconColor: AppColors.whiteColor)),
        compareFn: (item1, item2) => true,
        dropdownBuilder: (context, selectedItem) {
          return Text(
            selectedItem == null ? label : selectedItem['name'].toString(),
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontSize: 13.5),
          );
        },
        popupProps: PopupProps.menu(
          showSearchBox: true,
          constraints: const BoxConstraints(maxHeight: 200),
          menuProps: MenuProps(
              borderRadius: BorderRadius.circular(12),
              backgroundColor: Colors.transparent),
          emptyBuilder: (context, searchEntry) {
            return Center(
              child: Text(
                'No items found',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            );
          },
          containerBuilder: (context, popupWidget) {
            return Container(
              decoration: BoxDecoration(
                  color: AppColors.bodyColor,
                  borderRadius: BorderRadius.circular(12)),
              child: popupWidget,
            );
          },
          searchFieldProps: TextFieldProps(
              autofocus: true,
              cursorColor: AppColors.whiteColor,
              style: Theme.of(context).textTheme.headlineSmall,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          const BorderSide(color: AppColors.whiteTextColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColors.greyColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          const BorderSide(color: AppColors.whiteColor)),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontFamily: AppFont.medium),
                  contentPadding: const EdgeInsets.all(20),
                  label: Text(
                    'serach',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  prefixIconColor: AppColors.whiteColor,
                  suffixIconColor: AppColors.whiteColor,
                  prefixIcon: const Icon(Iconsax.search_normal_1_copy))),
          itemBuilder: (context, item, isSelected) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
              child: Text(
                item['name'],
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.start,
              ),
            );
          },
        ),
        onChanged: onChanged,
      ),
    );
  }
}
