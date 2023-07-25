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
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(vertical: 40),
      decoration:
          BoxDecoration(borderRadius: Corners.sm, color: AppColors.white),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: Corners.sm,
                image: const DecorationImage(
                    image: AssetImage(AppAssets.nature1), fit: BoxFit.cover),
              ),
            ),
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("title"),
                Text("subTitle"),
                Text("price"),
              ],
            ),
            const Spacer(),
            const FavoriteButton(),
          ]),
    );
  }
}
