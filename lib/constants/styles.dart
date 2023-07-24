import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';

class TextStyles {
  static TextStyle titleStyle =
      const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static TextStyle descStyle = const TextStyle(
      fontSize: 17, fontWeight: FontWeight.w600, color: AppColors.grey);
  static TextStyle catgStyle = const TextStyle(fontSize: 17);
  static TextStyle titleButton =
      const TextStyle(color: AppColors.white, fontSize: 17);
  static TextStyle subTitle =
      const TextStyle(color: AppColors.grey, fontSize: 12);
  static TextStyle titleCard =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
}

class Corners {
  static BorderRadius sm = const BorderRadius.all(Radius.circular(10));
  static BorderRadius med = const BorderRadius.all(Radius.circular(18));
}
