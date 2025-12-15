import 'package:flutter/material.dart';
import 'core/routes/app_routes.dart';
import 'core/constants/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}