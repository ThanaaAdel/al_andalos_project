import 'package:doc_doc_app/core/theming/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/assets.dart';
import '../../../../core/theming/styles.dart';
class ImageAndDescriptionText extends StatelessWidget {
  const ImageAndDescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.asset(AssetsImages.splashImage),
        verticalSpacing(30),
        Text('Let\'s find the "A" with us',textAlign: TextAlign.center,
          style: TextStyles.font24BlueBold,
        ),
        verticalSpacing(20)
      ],
    );
  }
}
