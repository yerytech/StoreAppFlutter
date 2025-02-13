import 'package:flutter/material.dart';

import '../../presentation/screens/screens.dart';
import 'app_routes.dart';

class AppPages {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.login: (context) => const LoginScreen(),
    AppRoutes.register: (context) => const RegisterScreen(),
    AppRoutes.loading: (context) => const LoadingScreen(),
    AppRoutes.home: (context) => const HomeScreen(),
  };
}
