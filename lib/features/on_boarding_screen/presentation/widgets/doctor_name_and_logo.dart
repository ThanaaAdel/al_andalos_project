import 'package:doc_doc_app/core/theming/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/assets.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';
class ImageAndDescriptionText extends StatelessWidget {
  const ImageAndDescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.asset(AssetsImages.splashImage),
        verticalSpacing(30),
        Text(S.of(context).description_text_in_image_on_boarding_screen,textAlign: TextAlign.center,
          style: TextStyles.font24BlueBold,
        ),
        verticalSpacing(20)
      ],
    );
  }
}
