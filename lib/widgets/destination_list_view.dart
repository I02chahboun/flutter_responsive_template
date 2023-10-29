import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/models/card_model.dart';
import 'package:responsive_home/utils/extensions.dart';
import 'package:responsive_home/widgets/list_tile_card.dart';

class DestinationListView extends StatelessWidget {
  const DestinationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(AppTexts.destination,
            style: TextStyles.title.copyWith(color: AppColors.white)),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: destinationData.length,
            itemBuilder: (context, index) {
              final CardModel destion = destinationData[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                  height: context.height * 0.15,
                  child: ListTileCard(
                    model: destion,
                    isDestion: true,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
