import 'package:flutter/material.dart';
import 'package:onboarding_flutter_app/screens/splash/splash_screen.dart';

class AppRoutes {

//from this route class we will manage all navigation direction in our app

  static const String splash = "/";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SplashScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
