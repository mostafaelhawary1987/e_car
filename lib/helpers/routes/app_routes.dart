import 'package:e_car/view/layout/auth/login/login_screen.dart';
import 'package:e_car/view/layout/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static Route<dynamic>? onGenratRoute(RouteSettings setting) {
    dynamic arguments;
    if (setting.arguments != null) arguments = setting.arguments;
    switch (setting.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

    }
    return null;
  }
}
