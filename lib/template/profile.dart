import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/images.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/utils/extensions.dart';
import 'package:responsive_home/widgets/appbar.dart';
import 'package:responsive_home/widgets/destination_list_view.dart';
import 'package:responsive_home/widgets/profile_image.dart';

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
            child: Container(
              padding: const EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                gradient: Gradients.gradient,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (!context.isSmall)
                      Text(AppTexts.myProfile,
                          style:
                              TextStyles.title.copyWith(color: AppColors.white))
                    else
                      const AppBars(),
                    const SizedBox(height: 50),
                    const ProfileImage(),
                    const SizedBox(height: 15),
                    Text(AppTexts.userDev,
                        style:
                            TextStyles.title.copyWith(color: AppColors.white),
                        textAlign: TextAlign.center),
                    Text(AppTexts.subTitle,
                        style: TextStyles.subTitle
                            .copyWith(color: AppColors.white),
                        textAlign: TextAlign.center),
                    const SizedBox(height: 30),
                    SizedBox(
                        height: context.height * 0.4,
                        child: const DestinationListView()),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
