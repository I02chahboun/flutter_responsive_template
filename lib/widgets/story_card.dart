import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/models/card_model.dart';
import 'package:responsive_home/widgets/favorite_icon.dart';

class StoryCard extends StatelessWidget {
  final CardModel model;
  const StoryCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.7,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: Corners.med,
            image: DecorationImage(
                image: AssetImage(model.image), fit: BoxFit.cover)),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: Corners.med, color: AppColors.white),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(model.title,
                            style: TextStyles.title.copyWith(fontSize: 15),
                            softWrap: false,
                            overflow: TextOverflow.fade),
                        Text(model.subTitle,
                            style: TextStyles.subTitle.copyWith(fontSize: 13),
                            softWrap: false,
                            overflow: TextOverflow.fade),
                        Text(model.price.toString(),
                            style: TextStyles.body.copyWith(fontSize: 11),
                            softWrap: false,
                            overflow: TextOverflow.fade),
                      ],
                    ),
                  ),
                  const FavoriteButton(),
                ],
              )),
        ),
      ),
    );
  }
}
