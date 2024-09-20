import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:stock_management_system/Provider/ShowAndHideNavigation.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Theme/Font_size.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final Widget? titleIcon;
  final Widget? leadingIcon;
  final List<Widget>? action;
  const AppBarWidget({
    super.key,
    required this.title,
    this.titleIcon,
    this.leadingIcon,
    this.action,
  });

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(90);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Consumer<ShowAndHideNavigationProvider>(
      builder: (context, value, child) {
        return AnimatedContainer(
          height: value.visibleNavigation ? 60 : 0,
          duration: const Duration(milliseconds: 200),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 10, left: 15, right: 15, top: 10),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.greyColor),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: widget.leadingIcon == null ? 20 : 10, right: 20),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              widget.leadingIcon ?? Container(),
                              widget.titleIcon ?? Container(),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.title,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(fontSize: AppFontSize.large),
                              ),
                            ],
                          ),
                          Row(
                            children: widget.action ?? [],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ));
  }
}
