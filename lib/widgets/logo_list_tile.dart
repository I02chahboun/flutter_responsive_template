import 'package:flutter/material.dart';
import 'package:responsive_home/constants/images.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';

class LogoListTile extends StatelessWidget {
  const LogoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppAssets.logo, fit: BoxFit.contain, height: 70, width: 70),
        Expanded(
            child: Text(AppTexts.titleLogo,
                style: TextStyles.title, softWrap: false)),
      ],
    );
  }
}
