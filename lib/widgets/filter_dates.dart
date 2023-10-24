import 'package:flutter/material.dart';
import 'package:responsive_home/models/date_model.dart';
import 'package:responsive_home/widgets/date_button.dart';

class FilterDates extends StatefulWidget {
  const FilterDates({super.key});

  @override
  State<FilterDates> createState() => _FilterDatesState();
}

class _FilterDatesState extends State<FilterDates> {
  List<Date> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dates.length,
      itemBuilder: (BuildContext context, int index) {
        final Date date = dates[index];
        final bool isSelected = selectedItems.contains(date);
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: index == 0 || index == 8 ? 0 : 22.0),
          child: DateButton(
              day: date.day,
              nume: date.num,
              isSelected: isSelected,
              onTap: () {
                isSelected
                    ? selectedItems.remove(date)
                    : selectedItems.add(date);
                setState(() {});
              }),
        );
      },
    );
  }
}
