import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';

class AppBars extends StatelessWidget {
  const AppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.white),
          onPressed: () {
            Navigator.pop(context);
          }),
      Text(AppTexts.myProfile,
          style: TextStyles.title.copyWith(color: AppColors.white)),
    ]);
  }
}
