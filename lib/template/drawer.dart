import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/widgets/drawers_list_view.dart';
import 'package:responsive_home/widgets/logo_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.all(15),
      child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LogoListTile(),
            SizedBox(height: 25),
            Expanded(
              child: DrawersListView(),
            ),
          ]),
    );
  }
}
