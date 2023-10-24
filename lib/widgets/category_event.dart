import 'package:flutter/material.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/models/card_model.dart';
import 'package:responsive_home/models/date_model.dart';
import 'package:responsive_home/widgets/categ_button.dart';
import 'package:responsive_home/widgets/date_button.dart';
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
              const CategButton(
                title: AppTexts.viewAll,
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: Sizes.height(context) * 0.08,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                final Date date = data[index];
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: index == 0 || index == 8 ? 0 : 22.0),
                  child: DateButton(day: date.day, nume: date.num),
                );
              },
            ),
          ),
          const SizedBox(height: 25),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
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
