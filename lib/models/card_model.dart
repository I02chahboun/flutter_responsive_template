import 'package:responsive_home/constants/images.dart';
import 'package:responsive_home/constants/texts.dart';

class CardModel {
  final String image, title, subTitle;
  final double price;
  CardModel(this.image, this.title, this.subTitle, this.price);
}

final List<CardModel> discoverData = [
  CardModel(AppAssets.storyNature1, AppTexts.ouzoud, AppTexts.place, 200),
  CardModel(AppAssets.storyNature2, AppTexts.benwidane, AppTexts.place, 200),
  CardModel(AppAssets.storyNature3, AppTexts.hossaima, AppTexts.place, 200),
];

final List<CardModel> eventData = [
  CardModel(AppAssets.nature1, AppTexts.nature1, AppTexts.place, 320),
  CardModel(AppAssets.nature2, AppTexts.nature2, AppTexts.place, 560),
  CardModel(AppAssets.snow1, AppTexts.snow1, AppTexts.place, 440),
  CardModel(AppAssets.snow2, AppTexts.snow2, AppTexts.place, 680),
];

final List<CardModel> destinationData = [
  CardModel(
    AppAssets.nature1,
    AppTexts.place,
    AppTexts.nature1,
    0,
  ),
  CardModel(
    AppAssets.nature1,
    AppTexts.place,
    AppTexts.nature1,
    0,
  ),
];

List<String> categoryDicover = [
  AppTexts.catg1,
  AppTexts.catg2,
  AppTexts.catg3,
];
