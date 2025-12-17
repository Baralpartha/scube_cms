import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routes/app_routes.dart';
import 'core/constants/app_colors.dart';

final ValueNotifier<Size> designSizeNotifier =
ValueNotifier(const Size(360, 800));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Size>(
      valueListenable: designSizeNotifier,
      builder: (context, designSize, _) {
        return ScreenUtilInit(
          designSize: designSize,
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'SCUBE CMS',
              theme: ThemeData(
                primaryColor: AppColors.primaryBlue,
                scaffoldBackgroundColor: Colors.white,
              ),
              initialRoute: AppRoutes.login,
              routes: AppRoutes.routes,
            );
          },
        );
      },
    );
  }
}
