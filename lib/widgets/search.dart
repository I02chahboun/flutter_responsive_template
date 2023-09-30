import 'package:flutter/material.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/widgets/icon_button.dart';
import 'package:responsive_home/widgets/elevated_button.dart';
import 'package:responsive_home/widgets/text_field.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.height(context) * 0.08,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: TextFiled()),
          SizedBox(width: 15),
          IconButtonn(),
          SizedBox(width: 15),
          ElevatedButtonn(),
        ],
      ),
    );
  }
}
