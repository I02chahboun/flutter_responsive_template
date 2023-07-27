import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';

class TextFiled extends StatelessWidget {
  const TextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: Corners.sm),
      child: TextField(
        decoration: InputDecoration(
          fillColor: AppColors.white,
          border: OutlineInputBorder(
              borderRadius: Corners.sm, borderSide: BorderSide.none),
          hintText: AppTexts.search,
          hintStyle: const TextStyle(color: AppColors.grey),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }
}
