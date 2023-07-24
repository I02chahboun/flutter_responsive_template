import 'package:flutter/material.dart';
import 'package:responsive_home/widgets/icon_button.dart';
import 'package:responsive_home/widgets/elevated_button.dart';
import 'package:responsive_home/widgets/text_field.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 20, child: TextFiled()),
        Spacer(),
        Expanded(
          flex: 2,
          child: IconButtonn(),
        ),
        Spacer(),
        Expanded(flex: 5, child: ElevatedButtonn()),
      ],
    );
  }
}
