import 'package:flutter/material.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/models/card_model.dart';
import 'package:responsive_home/utils/extensions.dart';
import 'package:responsive_home/widgets/story_card.dart';
import 'package:responsive_home/widgets/categ_button.dart';

// ignore: must_be_immutable
class CategDiscover extends StatelessWidget {
  const CategDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> indx = ValueNotifier(0);
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!context.isSmall)
            Text(
              AppTexts.categoryDicover,
              style: TextStyles.title,
            ),
          if (!context.isSmall) const SizedBox(height: 8),
          SizedBox(
            height: context.height * 0.06,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: context.isSmall
                      ? Text(
                          AppTexts.categoryDicover,
                          style: TextStyles.title,
                        )
                      : ValueListenableBuilder(
                          valueListenable: indx,
                          builder: (context, value, _) {
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: categoryDicover.length,
                              itemBuilder: (context, index) {
                                final String cateogry = categoryDicover[index];
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: index == 0
                                          ? 0.0
                                          : context.isSmall
                                              ? 0.5
                                              : 8.0),
                                  child: Center(
                                    child: CategButton(
                                      title: cateogry,
                                      isSelected: index == indx.value,
                                      onTap: () {
                                        indx.value = index;
                                      },
                                    ),
                                  ),
                                );
                              },
                            );
                          }),
                ),
                CategButton(title: AppTexts.viewAll, onTap: () {})
              ],
            ),
          ),
          if (!context.isSmall) const SizedBox(height: 10),
          SizedBox(
            height:
                context.isSmall ? context.height / 2.9 : context.height / 2.6,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: discoverData.length,
              itemBuilder: (BuildContext context, int index) {
                final CardModel story = discoverData[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: StoryCard(
                    model: story,
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
