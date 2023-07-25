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
    return Column(
      children: [
        Expanded(
          child: Row(
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
        ),
        Expanded(
          flex: 2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              final Date date = data[index];
              return Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: index == 0 ? 0 : 27.0),
                child: DateButton(day: date.day, nume: date.num),
              );
            },
          ),
        ),
        Expanded(
          flex: 3,
          child: GridView.builder(
            //physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return const ListTileCard();
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
          ),
        )
      ],
    );
  }
}
