import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Badge(
      smallSize: 12,
      backgroundColor: AppColors.badge,
      child: IconButton.filled(
        onPressed: () {},
        icon: const Icon(Icons.notifications_none_rounded,
            color: AppColors.blueGrey),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.white),
        ),
      ),
    );
  }
}
