import 'package:doc_doc_app/features/auth/login_screen/data/models/api_parent_response_login.dart';

import '../../../../../core/Routing/routers.dart';
import '../../../../../core/helper/extentions.dart';
import '../../../../../core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/styles.dart';
import '../../logic/login_cubit.dart';
import '../../logic/login_state.dart';

class LoginBlocListener extends StatefulWidget {
  const LoginBlocListener({super.key});

  @override
  State<LoginBlocListener> createState() => _LoginBlocListenerState();
}

class _LoginBlocListenerState extends State<LoginBlocListener> {
  late ParentResponseBody parentData;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit,LoginState>(
      child: const SizedBox.shrink(),
      listenWhen: (previous, current) => current is Loading || current is Success || current is Error,
      listener: (context, state) {
      state.whenOrNull(loading: (){
        showDialog(context: context, builder:
        (context) => const Center(child: CircularProgressIndicator(
          color: ColorsManager.mainColor,
        ),),
        );
      }, success: (loginResponse){
        parentData = loginResponse;
        context.pop();
        context.pushNamed(Routes.homeScreen,arguments: parentData);
      }, error:(error){

        setupErrorState(context, error);
      } );
    },);
  }

  void setupErrorState(BuildContext context, String error) {
      context.pop();
    showDialog(context: context,
        builder: (context) => AlertDialog(
          content: Text(error,
          style: TextStyles.font13DarkBlueMedium,
          ),
          actions: [
            TextButton(onPressed: (){
              context.pop();
            }, child: Text('Got It ',style: TextStyles.font13BlueSemiBold,)),
          ],
          icon: const Icon(Icons.error,
          color: Colors.red,
            size: 32,
          ),
        ),);
  }
}
