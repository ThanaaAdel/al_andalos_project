import 'package:doc_doc_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/helper/app_regex.dart';
import '../../../../../core/shared_widgets/app_text_feild.dart';
import '../../../../../core/theming/spacing.dart';
import '../../logic/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;

  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
  }


  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
              hintText: S.of(context).email,
              validator: (value) {
                if (value == null || value.isEmpty || !AppRex.isEmailValid(value)) {
                  return 'Please enter a valid email';
                }
              },
              controller: context.read<LoginCubit>().emailController,
            ),
            verticalSpacing(25),
            AppTextFormField(
              hintText: S.of(context).password,
              validator: (value) {
                if (value == null || value.isEmpty ) {
                  return 'Please enter a valid Password';
                }
              },
              controller:
              context.read<LoginCubit>().passwordController,
              obscureText: isObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ),
            verticalSpacing(24),

          ],
        ));
  }
}
