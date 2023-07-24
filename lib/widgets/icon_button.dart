import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';

class IconButtonn extends StatelessWidget {
  const IconButtonn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Padding(
        padding: EdgeInsets.symmetric(vertical: 7.0),
        child: Icon(
          Icons.menu,
          color: AppColors.white,
        ),
      ),
      style: ButtonStyle(
          maximumSize: MaterialStateProperty.all(
              Size.fromHeight(MediaQuery.of(context).size.height)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: Corners.sm)),
          backgroundColor: MaterialStateProperty.all(AppColors.green)),
    );
  }
}
