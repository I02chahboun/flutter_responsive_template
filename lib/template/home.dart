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
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: Corners.med,
        color: AppColors.greenAccent,
      ),
      child: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
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
    );
  }
}
