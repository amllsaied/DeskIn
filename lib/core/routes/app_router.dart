import 'package:deskin_app/core/routes/app_routes.dart';
import 'package:deskin_app/feature/auth/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      
      case AppRoutes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

      // case Routes.register:
      //   return MaterialPageRoute(
      //     builder: (_) => const RegisterScreen(),
      //   );

      // case Routes.home:
      //   return MaterialPageRoute(
      //     builder: (_) => const HomeScreen(),
      //   );

      // case Routes.booking:
      //   return MaterialPageRoute(
      //     builder: (_) => const BookingScreen(),
      //   );

      default:
        return null;
    }
  }
}