import 'package:responsive_home/constants/images.dart';
import 'package:responsive_home/constants/texts.dart';

class Story {
  final String image, title, subTitle;
  final double price;
  Story(this.image, this.title, this.subTitle, this.price);
}

final List<Story> data = [
  Story(AppAssets.storyNature1, AppTexts.userOne, AppTexts.userOneDesc, 200),
  Story(AppAssets.storyNature2, AppTexts.userOne, AppTexts.userTwoDesc, 200),
  Story(AppAssets.storyNature3, AppTexts.userOne, AppTexts.userTreeDesc, 200),
];
