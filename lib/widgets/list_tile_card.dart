import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/models/card_model.dart';
import 'package:responsive_home/widgets/favorite_icon.dart';

class ListTileCard extends StatelessWidget {
  final CardModel model;
  final bool isDestion;
  const ListTileCard({super.key, required this.model, this.isDestion = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: Corners.sm,
        color: AppColors.white,
        boxShadow: [
          if (!isDestion)
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
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: Corners.sm,
                  image: DecorationImage(
                      image: AssetImage(model.image), fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 3.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.title,
                        style: TextStyles.title.copyWith(fontSize: 15),
                        softWrap: false,
                        overflow: TextOverflow.fade),
                    const SizedBox(height: 2),
                    Text(model.subTitle,
                        style: TextStyles.subTitle.copyWith(fontSize: 13),
                        softWrap: false,
                        overflow: TextOverflow.fade),
                    if (!isDestion) const Spacer(),
                    Text("${model.price}/day",
                        style: TextStyles.body.copyWith(fontSize: 11),
                        softWrap: false,
                        overflow: TextOverflow.fade),
                  ],
                ),
              ),
            ),
            if (!isDestion) const FavoriteButton(),
          ]),
    );
  }
}
