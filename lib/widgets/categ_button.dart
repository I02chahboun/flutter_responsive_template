import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';

class CategButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  const CategButton(
      {super.key,
      required this.title,
      this.isSelected = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    final bool isViewAll = title == AppTexts.viewAll;
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: Corners.med,
      ),
      onTap: onTap,
      child: isViewAll
          ? Row(
              children: [
                Text(
                  title,
                  style: TextStyles.subTitle.copyWith(
                      color: AppColors.green, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.arrow_forward,
                  color: AppColors.green,
                  size: 18,
                ),
              ],
            )
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Text(
                title,
                style: TextStyles.subTitle.copyWith(
                    color: isSelected ? AppColors.green : null,
                    fontWeight: FontWeight.w600),
              ),
            ),
    );
  }
}
