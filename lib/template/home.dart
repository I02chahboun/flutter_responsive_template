import 'package:flutter/material.dart';
import 'package:responsive_home/constants/colors.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/widgets/category_discover.dart';
import 'package:responsive_home/widgets/category_event.dart';
import 'package:responsive_home/widgets/list_tile.dart';
import 'package:responsive_home/widgets/search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.height(context),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: Corners.med,
        color: AppColors.green.withOpacity(0.06),
      ),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            ListTilee(),
            Search(),
            CategDiscover(),
            CategEvent(),
          ],
        ),
      ),
    );
  }
}
