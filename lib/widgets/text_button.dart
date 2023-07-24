import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/texts.dart';

class TextButtonn extends StatelessWidget {
  final String title;
  final Color color;
  const TextButtonn(
      {super.key, required this.title, this.color = AppColors.grey});

  @override
  Widget build(BuildContext context) {
    final bool isViewAll = title == AppTexts.viewAll;
    return TextButton(
      onPressed: () {},
      child: isViewAll
          ? Row(
              children: [
                Text(
                  title,
                  style: TextStyle(color: color, fontSize: 18),
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
          : Text(
              title,
              style: TextStyle(color: color, fontSize: 18),
            ),
    );
  }
}
