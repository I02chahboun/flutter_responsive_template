import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';

class IconHome extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const IconHome({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: onPressed,
      icon: Icon(icon, color: AppColors.blueGrey),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.white),
      ),
    );
  }
}
