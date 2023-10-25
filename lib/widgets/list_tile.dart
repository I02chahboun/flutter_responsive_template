import 'package:flutter/material.dart';
import 'package:responsive_home/constants/styles.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/utils/extensions.dart';
import 'package:responsive_home/widgets/notification_icon.dart';
import 'package:responsive_home/widgets/icon_home.dart';

class ListTilee extends StatelessWidget {
  const ListTilee({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (context.isSmall)
          IconHome(
              icon: Icons.menu,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }),
        if (context.isSmall) const SizedBox(width: 5),
        Expanded(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              AppTexts.userDev,
              style: TextStyles.title,
            ),
            subtitle: Text(
              AppTexts.welcome,
              style: TextStyles.subTitle,
            ),
            trailing: context.isSmall
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const NotificationIcon(),
                      IconHome(icon: Icons.person, onPressed: () {})
                    ],
                  )
                : const NotificationIcon(),
          ),
        ),
      ],
    );
  }
}
