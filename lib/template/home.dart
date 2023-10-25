import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
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
        child: Container(
          height: Sizes.height(context),
          margin: context.isSmall ? null : const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: Corners.med,
            color: AppColors.greenAccent,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.isSmall ? 10.0 : 20.0, vertical: 10),
              child: const Column(
                children: [
                  ListTilee(),
                  Search(),
                  SizedBox(height: 30),
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
