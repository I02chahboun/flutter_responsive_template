import 'package:flutter/material.dart';
import 'package:responsive_home/utils/extensions.dart';
import 'package:responsive_home/widgets/icon_button.dart';
import 'package:responsive_home/widgets/elevated_button.dart';
import 'package:responsive_home/widgets/text_field.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.isSmall ? context.height * 0.06 : context.height * 0.07,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: TextFiled()),
          SizedBox(width: context.isSmall ? 10 : 15),
          const IconButtonn(),
          SizedBox(width: context.isSmall ? 10 : 15),
          const ElevatedButtonn(),
        ],
      ),
    );
  }
}
