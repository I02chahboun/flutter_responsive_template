import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';

class TextStyles {
  static TextStyle title = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.blueGrey);
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

class Gradients {
  static LinearGradient gradient = LinearGradient(
      stops: const [0.0, 0.5, 1.0],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColors.blueGrey.withOpacity(0.5),
        Colors.transparent,
        AppColors.blueGrey.withOpacity(0.5)
      ]);
}
