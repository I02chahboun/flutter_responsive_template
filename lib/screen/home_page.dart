import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/template/drawer.dart';
import 'package:responsive_home/template/home.dart';
import 'package:responsive_home/template/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SizedBox(
        height: Sizes.height(context),
        width: Sizes.width(context),
        child: const Row(
          children: [
            Expanded(child: MyDrawer()),
            Expanded(flex: 3, child: Home()),
            Expanded(child: Profile())
          ],
        ),
      ),
    );
  }
}
