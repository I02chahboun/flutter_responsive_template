import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: () {},
      icon: const Icon(
        Icons.favorite_border,
        color: AppColors.green,
        size: 22,
      ),
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(AppColors.green.withOpacity(0.4)),
      ),
    );
  }
}
