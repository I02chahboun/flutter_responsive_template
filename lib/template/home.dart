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
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: Corners.med,
        color: AppColors.green.withOpacity(0.06),
      ),
      child: const Column(
        children: [
          Expanded(flex: 2, child: ListTilee()),
          Expanded(flex: 1, child: Search()),
          Expanded(flex: 5, child: CategDiscover()),
          Expanded(flex: 7, child: CategEvent()),
        ],
      ),
    );
  }
}
