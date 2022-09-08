import 'package:flutter/material.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextTheme defaultTheme(BuildContext context) =>
      Theme.of(context).textTheme;
}
