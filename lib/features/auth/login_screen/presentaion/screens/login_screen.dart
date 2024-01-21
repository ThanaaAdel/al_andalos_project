import 'package:doc_doc_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/app_elevated_button.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/spacing.dart';
import '../../../../../core/theming/styles.dart';
import '../../logic/login_cubit.dart';
import '../widgets/email_and_password.dart';
import '../widgets/login_bloc_listener.dart';
import '../widgets/term_and_condition_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorsManager.lightGrey,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Image.asset(AssetsImages.loginImage),
              verticalSpacing(30),
              Column(
                children: [
                  const EmailAndPassword(),
                  verticalSpacing(100),
                  AppTextButton(
                      textStyle: TextStyles.font16WithSemiBold,
                      onPressed: () {
                        validateThenDoLogin(context);

                      },
                      textButton: 'Login'),
                  verticalSpacing(20),
                  const TermAndConditionText(),
                  verticalSpacing(70),
                  const LoginBlocListener(),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }

  void validateThenDoLogin(BuildContext context){
    if(context.read<LoginCubit>().formKey.currentState!.validate()){
      context.read<LoginCubit>().emitLoginStates();
      setState(() {
        context.read<LoginCubit>().emailController.clear();
        context.read<LoginCubit>().passwordController.clear();
      });
    }
  }
}
