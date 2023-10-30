import 'package:flutter/material.dart';
import 'package:responsive_home/constants/images.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 140,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(AppAssets.profile), fit: BoxFit.contain),
      ),
    );
  }
}
