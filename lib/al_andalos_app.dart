import 'core/Routing/app_router.dart';
import 'core/Routing/routers.dart';
import 'core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlAndalosApp extends StatelessWidget {
  final AppRouter appRouter;
  const AlAndalosApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Al Andalos App',
        theme: ThemeData(
       primaryColor: ColorsManager.mainColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
