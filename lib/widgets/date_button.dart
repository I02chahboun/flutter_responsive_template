import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';

class DateButton extends StatelessWidget {
  final String day;
  final int nume;
  final bool isSelected;
  final VoidCallback onTap;
  const DateButton({
    super.key,
    required this.day,
    required this.nume,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(30), bottom: Radius.circular(30)),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.green : null,
          borderRadius: const BorderRadius.vertical(
              top: Radius.circular(30), bottom: Radius.circular(30)),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Text(
                  day,
                  style: TextStyles.body.copyWith(
                      color: isSelected ? AppColors.white : null, fontSize: 9),
                ),
              ),
              Text(
                nume.toString(),
                style: TextStyles.body.copyWith(
                    fontWeight: FontWeight.bold,
                    color: isSelected ? AppColors.white : AppColors.blueGrey),
              ),
            ]),
      ),
    );
  }
}
