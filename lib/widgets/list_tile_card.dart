import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/models/card_model.dart';
import 'package:responsive_home/widgets/favorite_icon.dart';

class ListTileCard extends StatelessWidget {
  final CardModel event;
  const ListTileCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
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
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: Corners.sm,
                  image: DecorationImage(
                      image: AssetImage(event.image), fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(event.title, style: TextStyles.titleCard),
                  Text(event.subTitle, style: TextStyles.subTitle),
                  Text("${event.price}/day", style: TextStyles.subTitle),
                ],
              ),
            ),
            const FavoriteButton(),
          ]),
    );
  }
}
