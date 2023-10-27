import 'package:flutter/material.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/models/card_model.dart';
import 'package:responsive_home/utils/extensions.dart';
import 'package:responsive_home/widgets/categ_button.dart';
import 'package:responsive_home/widgets/filter_dates.dart';
import 'package:responsive_home/widgets/list_tile_card.dart';

class CategEvent extends StatelessWidget {
  const CategEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppTexts.categoryEvent,
                style: TextStyles.title,
              ),
              CategButton(
                title: AppTexts.viewAll,
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: context.isSmall
                ? Sizes.height(context) * 0.07
                : Sizes.height(context) * 0.08,
            child: const FilterDates(),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.getGridViewCount,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1,
                mainAxisExtent: 90),
            itemCount: eventData.length,
            itemBuilder: (context, index) {
              final CardModel event = eventData[index];
              return ListTileCard(event: event);
            },
          ),
        ],
      ),
    );
  }
}
