import 'package:flutter/material.dart';

import '../../features/Splash_Screen/Splash_Screen.dart';
import '../../features/auth/login_screen.dart';
import '../../features/dashboard/screens/Page_Two_Screen.dart';
import '../../features/pageone/presentation/pages/page_one_screen.dart';
class AppRoutes {
  static const String splash = '/';

  static const String login = '/login';
  static const String pageone = '/pageone';
  static const String dashboard = '/dashboard';
  static const String gridDetails = '/grid-details';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),

    login: (context) => const LoginScreen(),
    pageone: (context) => const PageOneScreen(),
    dashboard: (context) => const PageTwoScreen(),
  };
}
