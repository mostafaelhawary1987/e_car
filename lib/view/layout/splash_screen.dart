import 'package:e_car/view/layout/auth/login/login_screen.dart';
import 'package:flutter/material.dart';
import '../../helpers/theme/app_colors.dart';
import '../../helpers/utils/navigator_methods.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _inital();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: whiteColor),
      child: const Center(
        child: Text('Text'),
      ),
    );
  }

  void _inital() {
    Future.delayed(const Duration(seconds: 2), (() {
      NavigatorMethods.pushNamedAndRemoveUntil(context, LoginScreen.routeName);
    }));
  }
}
