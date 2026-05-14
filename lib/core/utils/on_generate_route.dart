
import 'package:flutter/material.dart';
import 'package:food_app/features/auth/views/login_view.dart';
import 'package:food_app/features/splash/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());  
    
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}