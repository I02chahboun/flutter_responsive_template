import 'package:flutter/material.dart';
import 'package:responsive_home/widgets/list_tile.dart';
import 'package:responsive_home/widgets/search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: ListTilee()),
        Expanded(child: Search()),
        Spacer(
          flex: 3,
        ),
      ],
    );
  }
}
