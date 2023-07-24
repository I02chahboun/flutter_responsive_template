import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/widgets/story_card.dart';
import 'package:responsive_home/widgets/text_button.dart';

class CategDiscover extends StatelessWidget {
  const CategDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            AppTexts.categoryDicover,
            style: TextStyles.titleStyle,
          ),
        ),
        const Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButtonn(title: AppTexts.catg1),
              TextButtonn(title: AppTexts.catg2),
              TextButtonn(title: AppTexts.catg3),
              Spacer(),
              TextButtonn(
                title: AppTexts.viewAll,
                color: AppColors.green,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: StoryCard(
                  title: AppTexts.userOne,
                  subTitle: AppTexts.userOneDesc,
                  price: 566,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
