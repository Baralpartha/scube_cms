import 'package:flutter/material.dart';
import '../../features/auth/login_screen.dart';
import '../../features/dashboard/screens/dashboard_screen.dart';
import '../../features/dashboard/screens/grid_details_screen.dart';

class AppRoutes {
  static const String login = '/';
  static const String dashboard = '/dashboard';
  static const String gridDetails = '/grid-details';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => const LoginScreen(),
    dashboard: (context) => const DashboardScreen(),
    gridDetails: (context) => const GridDetailsScreen(),
  };
}