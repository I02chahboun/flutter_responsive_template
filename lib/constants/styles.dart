import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';

class TextStyles {
  static TextStyle title =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static TextStyle subTitle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.grey);
  static TextStyle button = const TextStyle(
      fontSize: 17, fontWeight: FontWeight.w500, color: AppColors.grey);
  static TextStyle body = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.grey);
}

class Corners {
  static BorderRadius sm = const BorderRadius.all(Radius.circular(10));
  static BorderRadius med = const BorderRadius.all(Radius.circular(18));
}

class Sizes {
  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;
}
