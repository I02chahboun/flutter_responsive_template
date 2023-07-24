import 'package:flutter/material.dart';
import 'package:responsive_home/template/drawer.dart';
import 'package:responsive_home/template/home.dart';
import 'package:responsive_home/template/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        child: Row(
          children: [
            Expanded(flex: 2, child: MyDrawer()),
            Expanded(flex: 6, child: Home()),
            Expanded(
              flex: 3,
              child: Profile(),
            )
          ],
        ),
      ),
    );
  }
}
