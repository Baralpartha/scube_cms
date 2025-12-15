import 'package:flutter/material.dart';
import '../../features/auth/login_screen.dart';
import '../../features/dashboard/dashboard_screen.dart';

class AppRoutes {
  static const String login = '/';
  static const String dashboard = '/dashboard';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => const LoginScreen(),
    dashboard: (context) => const DashboardScreen(),
  };
}