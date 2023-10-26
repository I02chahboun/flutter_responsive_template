import 'package:flutter/material.dart';
import 'package:responsive_home/constants/texts.dart';
import 'package:responsive_home/widgets/filled_button_icon.dart';

class DrawersListView extends StatefulWidget {
  const DrawersListView({super.key});

  @override
  State<DrawersListView> createState() => _DrawersListViewState();
}

class _DrawersListViewState extends State<DrawersListView> {
  int indx = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: labels.length,
      itemBuilder: (context, index) {
        final IconData icon = icons[index];
        final String label = labels[index];
        return Padding(
          padding: const EdgeInsets.only(right: 25, top: 10, bottom: 10),
          child: FilledButtonIcon(
              icon: icon,
              label: label,
              isSelected: indx == index,
              onPressed: () {
                setState(() {
                  indx = index;
                });
              }),
        );
      },
    );
  }

  final List<String> labels = [
    AppTexts.dashboard,
    AppTexts.discover,
    AppTexts.tickets,
    AppTexts.favorite,
    AppTexts.message,
    AppTexts.transaction,
    AppTexts.setting,
  ];

  final List<IconData> icons = [
    Icons.home,
    Icons.discord,
    Icons.airplane_ticket,
    Icons.favorite,
    Icons.message,
    Icons.transcribe,
    Icons.settings
  ];
}
