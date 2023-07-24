import 'package:flutter/material.dart';
import 'package:responsive_home/widgets/category_discover.dart';
import 'package:responsive_home/widgets/list_tile.dart';
import 'package:responsive_home/widgets/search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: ListTilee()),
        Expanded(flex: 2, child: Search()),
        Expanded(flex: 7, child: CategDiscover()),
        Spacer(
          flex: 5,
        ),
      ],
    );
  }
}
