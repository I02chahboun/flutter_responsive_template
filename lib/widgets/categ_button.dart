import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';

class CategButton extends StatelessWidget {
  final String title;
  const CategButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final bool isViewAll = title == AppTexts.viewAll;
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: Corners.med,
      ),
      onTap: () {},
      child: isViewAll
          ? Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: AppColors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
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
                style: const TextStyle(color: AppColors.grey, fontSize: 16),
              ),
            ),
    );
  }
}
