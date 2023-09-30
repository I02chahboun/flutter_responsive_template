import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/images.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/widgets/favorite_icon.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.width(context) * 0.25,
      padding: const EdgeInsets.all(10),
      //margin: const EdgeInsets.symmetric(vertical: 40),
      decoration: BoxDecoration(
        borderRadius: Corners.sm,
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: Corners.sm,
                image: const DecorationImage(
                    image: AssetImage(AppAssets.nature1), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("title"),
                  Text("subTitle"),
                  Text("price"),
                ],
              ),
            ),
            const FavoriteButton(),
          ]),
    );
  }
}
