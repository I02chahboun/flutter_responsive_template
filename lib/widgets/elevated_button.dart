import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';

class ElevatedButtonn extends StatelessWidget {
  const ElevatedButtonn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.green),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: Corners.sm,
            )),
            shadowColor: MaterialStateProperty.all(AppColors.grey)),
        child: Text(
          AppTexts.searchButton,
          style: TextStyles.titleButton,
        ));
  }
}
