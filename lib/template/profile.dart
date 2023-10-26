import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.grey,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [Text(AppTexts.myProfile, style: TextStyles.title)]),
        ),
      ),
    );
  }
}
