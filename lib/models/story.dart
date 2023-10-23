import 'package:responsive_home/constants/images.dart';
import 'package:responsive_home/constants/texts.dart';

class Story {
  final String image, title, subTitle;
  final double price;
  Story(this.image, this.title, this.subTitle, this.price);
}

final List<Story> storyData = [
  Story(AppAssets.storyNature1, AppTexts.userOne, AppTexts.userOneDesc, 200),
  Story(AppAssets.storyNature2, AppTexts.userTwo, AppTexts.userTwoDesc, 200),
  Story(AppAssets.storyNature3, AppTexts.userTree, AppTexts.userTreeDesc, 200),
];

List<String> categoryDicover = [
  AppTexts.catg1,
  AppTexts.catg2,
  AppTexts.catg3,
];
