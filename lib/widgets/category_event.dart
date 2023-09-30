import 'package:flutter/material.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/models/date.dart';
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
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppTexts.categoryEvent,
                style: TextStyles.titleStyle,
              ),
              const CategButton(
                title: AppTexts.viewAll,
              ),
            ],
          ),
          SizedBox(
            height: Sizes.height(context) / 6,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                final Date date = data[index];
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: index == 0 || index == 8 ? 0 : 27.0),
                  child: DateButton(day: date.day, nume: date.num),
                );
              },
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ListTileCard(),
              SizedBox(
                width: 10,
              ),
              ListTileCard(),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ListTileCard(),
              SizedBox(
                width: 10,
              ),
              ListTileCard(),
            ],
          ),
        ],
      ),
    );
  }
}
