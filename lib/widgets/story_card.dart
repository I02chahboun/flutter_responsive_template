import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/images.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/widgets/favorite_icon.dart';

class StoryCard extends StatelessWidget {
  final String title, subTitle;
  final double price;
  const StoryCard(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: Corners.med,
          image: const DecorationImage(
              image: AssetImage(AppAssets.storyNature1), fit: BoxFit.cover)),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: Corners.med, color: AppColors.white),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: TextStyles.titleCard,
                    ),
                    Text(
                      subTitle,
                      style: TextStyles.subTitle,
                    ),
                    Text(price.toString()),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                const FavoriteButton(),
              ],
            )),
      ),
    );
  }
}
