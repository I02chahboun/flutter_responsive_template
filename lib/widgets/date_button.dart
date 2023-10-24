import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';

class DateButton extends StatelessWidget {
  final String day;
  final int nume;
  const DateButton({super.key, required this.day, required this.nume});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      customBorder: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(30), bottom: Radius.circular(30)),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(30), bottom: Radius.circular(30)),
        ),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Expanded(
            child: Text(
              day,
              style: TextStyles.body,
            ),
          ),
          Text(
            nume.toString(),
            style: TextStyles.body.copyWith(
                fontWeight: FontWeight.bold, color: AppColors.blueGrey),
          ),
        ]),
      ),
    );
  }
}
