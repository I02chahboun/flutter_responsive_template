import 'package:responsive_home/constants/texts.dart';

class Date {
  final String day;
  final int num;
  Date({required this.day, required this.num});
}

List<Date> data = [
  Date(day: AppTexts.sun, num: 12),
  Date(day: AppTexts.mon, num: 13),
  Date(day: AppTexts.tue, num: 14),
  Date(day: AppTexts.wed, num: 15),
  Date(day: AppTexts.thu, num: 16),
  Date(day: AppTexts.fri, num: 17),
  Date(day: AppTexts.sat, num: 18),
  Date(day: AppTexts.sun, num: 19),
  Date(day: AppTexts.mon, num: 20),
  Date(day: AppTexts.tue, num: 21),
];
