import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/template/drawer.dart';
import 'package:responsive_home/template/home.dart';
import 'package:responsive_home/template/profile.dart';
import 'package:responsive_home/utils/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: context.isSmall ? const Drawer() : null,
      backgroundColor: AppColors.white,
      body: SizedBox(
        height: Sizes.height(context),
        width: Sizes.width(context),
        child: Row(
          children: [
            if (!context.isSmall) const Expanded(child: MyDrawer()),
            const Expanded(flex: 3, child: Home()),
            if (!context.isSmall) const Expanded(child: Profile())
          ],
        ),
      ),
    );
  }
}
