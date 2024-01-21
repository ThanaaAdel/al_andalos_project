import 'package:flutter/cupertino.dart';

import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

class TermAndConditionText extends StatelessWidget {
  const TermAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return  RichText(
      textAlign: TextAlign.center,
      text:
      TextSpan(children:
      [
        TextSpan(
          text: S.of(context).by_logging_you_agree,
          style: TextStyles.font13GrayRegular,
        ),
        TextSpan(
            text: S.of(context).terms_and_condition,
            style: TextStyles.font13DarkBlueRegular
        ),
        TextSpan(
          text: S.of(context).and,
          style: TextStyles.font13GrayRegular.copyWith(
              height: 1.3
          ),
        ),
        TextSpan(
            text: S.of(context).privacy_policy,
            style: TextStyles.font13DarkBlueRegular
        )
      ]
      ),

    );
  }
}
