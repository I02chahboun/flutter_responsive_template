import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/images.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/widgets/destination_list_view.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.greenAccent,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.white,
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppAssets.storyNature1),
                    fit: BoxFit.cover)),
            padding: const EdgeInsets.all(25.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(AppTexts.myProfile,
                      style: TextStyles.title.copyWith(color: AppColors.white)),
                  const SizedBox(height: 50),
                  const CircleAvatar(
                    radius: 80,
                  ),
                  const SizedBox(height: 15),
                  Text(AppTexts.userDev,
                      style: TextStyles.title.copyWith(color: AppColors.white),
                      textAlign: TextAlign.center),
                  Text(AppTexts.nature1,
                      style:
                          TextStyles.subTitle.copyWith(color: AppColors.white),
                      textAlign: TextAlign.center),
                  const SizedBox(height: 25),
                  const Expanded(child: DestinationListView()),
                ]),
          ),
        ),
      ),
    );
  }
}
