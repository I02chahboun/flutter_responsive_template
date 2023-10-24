import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';

// ignore: must_be_immutable
class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: () {
        isFavorited = !isFavorited;
        setState(() {});
      },
      icon: Icon(
        isFavorited ? Icons.favorite : Icons.favorite_border,
        color: isFavorited ? AppColors.white : AppColors.green,
        size: 16,
      ),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size.zero),
        backgroundColor: MaterialStateProperty.all<Color>(
            isFavorited ? AppColors.green : AppColors.green.withOpacity(0.2)),
      ),
    );
  }
}
