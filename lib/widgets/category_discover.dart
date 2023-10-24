import 'package:flutter/material.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/models/card_model.dart';
import 'package:responsive_home/widgets/story_card.dart';
import 'package:responsive_home/widgets/categ_button.dart';

// ignore: must_be_immutable
class CategDiscover extends StatelessWidget {
  const CategDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.categoryDicover,
            style: TextStyles.title,
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: Sizes.height(context) * 0.06,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryDicover.length,
                    itemBuilder: (context, index) {
                      final String cateogry = categoryDicover[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: index == 0 ? 0.0 : 8.0),
                        child: Center(
                          child: CategButton(
                            title: cateogry,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const CategButton(title: AppTexts.viewAll)
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: Sizes.height(context) / 2.6,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: discoverData.length,
              itemBuilder: (BuildContext context, int index) {
                final CardModel story = discoverData[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: StoryCard(
                    image: story.image,
                    title: story.title,
                    subTitle: story.subTitle,
                    price: story.price,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
