import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';

class FilledButtonIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;
  const FilledButtonIcon(
      {super.key,
      required this.icon,
      required this.label,
      this.isSelected = false,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
        style: ButtonStyle(
          alignment: Alignment.centerLeft,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: Corners.sm)),
          backgroundColor: MaterialStateProperty.all(
              isSelected ? AppColors.green : AppColors.white),
        ),
        onPressed: onPressed,
        icon: Icon(icon, color: isSelected ? AppColors.white : AppColors.grey),
        label: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(label,
              style: TextStyles.button
                  .copyWith(color: isSelected ? AppColors.white : null),
              softWrap: false),
        ));
  }
}
