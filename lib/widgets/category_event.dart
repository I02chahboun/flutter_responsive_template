import 'package:flutter/material.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/widgets/categ_button.dart';

class CategEvent extends StatelessWidget {
  const CategEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppTexts.categoryEvent,
              style: TextStyles.titleStyle,
            ),
            const CategButton(
              title: AppTexts.viewAll,
            ),
          ],
        )
      ],
    );
  }
}
