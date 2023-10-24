import 'package:flutter/material.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/widgets/notification_icon.dart';

class ListTilee extends StatelessWidget {
  const ListTilee({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        AppTexts.userDev,
        style: TextStyles.title,
      ),
      subtitle: Text(
        AppTexts.welcome,
        style: TextStyles.subTitle,
      ),
      trailing: const NotificationIcon(),
    );
  }
}
