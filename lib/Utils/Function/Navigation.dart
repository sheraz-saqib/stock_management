import 'package:flutter/material.dart';

class Navigate {
  static void replaceView({
    required BuildContext context,
    required route,
  }) {
    Navigator.pushReplacementNamed(context, route);
  }
  static void NextView({
    required BuildContext context,
    required route,
    arrguments,
  }) {
    Navigator.pushNamed(context, route,arguments: arrguments);
  }
  static void back({
    required BuildContext context,
  }) {
    Navigator.pop(context);
  }
}
