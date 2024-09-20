import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';
import 'package:stock_management_system/Provider/ToggleProvider.dart';
import 'package:stock_management_system/Routes/Routes_name.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Theme/App_font.dart';
import 'package:stock_management_system/Utils/Widgets/button.dart';
import 'package:stock_management_system/Utils/Widgets/textField.dart';
import 'package:svg_flutter/svg.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 190,
              height: 190,
              child: SvgPicture.asset('assets/images/login.svg'),
            ),
            const SizedBox(
              height: 40,
            ),
            AppTextFields.simpleTextField(
                prefixIcon: const Icon(Iconsax.sms),
                context: context,
                label: "Email",
                controller: _emailController,
                inputType: TextInputType.emailAddress),
            Consumer<Toggleprovider>(
              builder: (context, value, child) {
                return AppTextFields.simpleTextField(
                    prefixIcon: const Icon(Iconsax.lock),
                    context: context,
                    label: "Password",
                    controller: _passwordController,
                    obscureText: value.togglevalue,
                    suffixIcon: IconButton(
                        onPressed: () {
                          value.setToggleValue();
                        },
                        icon: Icon(value.togglevalue
                            ? Iconsax.eye_slash
                            : Iconsax.eye)));
              },
            ),
            const SizedBox(
              height: 14,
            ),
            AppButtons.ContainerButton(
                context: context,
                text: 'Login',
                onTab: () {
                  Navigator.pushReplacementNamed(
                      context, RoutesName.category_view);
                },
                width: 330,
                height: 45,
                loading: false,
                backColor: AppColors.lightBlue,
                textColor: AppColors.bodyColor),
            const SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'I have no account?',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, RoutesName.home_view);
                  },
                  child: Text(
                    'Create Account',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppColors.lightBlue, fontFamily: AppFont.medium),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
