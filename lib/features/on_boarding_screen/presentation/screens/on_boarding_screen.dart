import 'package:doc_doc_app/core/theming/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/doctor_name_and_logo.dart';
import '../widgets/get_started_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.lightGrey,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(children: [
            verticalSpacing(100),
              const ImageAndDescriptionText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    Text(
                      'Please Sign in to view personalized \n recommendations',
                      style: TextStyles.font14Gray,
                      textAlign: TextAlign.center,
                    ),
                   verticalSpacing(100),
                    const GetStartedButton(),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
