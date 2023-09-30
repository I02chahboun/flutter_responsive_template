import 'package:flutter/material.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/models/story.dart';
import 'package:responsive_home/widgets/story_card.dart';
import 'package:responsive_home/widgets/categ_button.dart';

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
            style: TextStyles.titleStyle,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CategButton(
                title: AppTexts.catg1,
              ),
              SizedBox(
                width: 25,
              ),
              CategButton(title: AppTexts.catg2),
              SizedBox(
                width: 25,
              ),
              CategButton(title: AppTexts.catg3),
              CategButton(
                title: AppTexts.viewAll,
              ),
            ],
          ),
          SizedBox(
            height: Sizes.height(context) / 4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                final Story story = data[index];
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
