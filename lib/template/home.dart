import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/template/drawer.dart';
import 'package:responsive_home/utils/extensions.dart';
import 'package:responsive_home/widgets/category_discover.dart';
import 'package:responsive_home/widgets/category_event.dart';
import 'package:responsive_home/widgets/list_tile.dart';
import 'package:responsive_home/widgets/search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.greenAccent,
      child: SafeArea(
        child: Scaffold(
          drawer: context.isSmall
              ? Drawer(
                  backgroundColor: AppColors.white,
                  width: context.width / 1.8,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                  child: const MyDrawer(),
                )
              : null,
          backgroundColor: AppColors.greenAccent,
          body: Container(
            height: context.height,
            margin: context.isSmall ? null : const EdgeInsets.all(18),
            padding: EdgeInsets.symmetric(
                horizontal: context.isSmall ? 10.0 : 20.0, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: context.isSmall ? null : Corners.med,
            ),
            child: const SingleChildScrollView(
              child: Column(
                children: [
                  ListTilee(),
                  SizedBox(height: 7),
                  Search(),
                  SizedBox(height: 20),
                  CategDiscover(),
                  SizedBox(height: 20),
                  CategEvent(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
