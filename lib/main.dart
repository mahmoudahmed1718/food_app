import 'package:flutter/material.dart';
import 'package:food_app/core/utils/on_generate_route.dart';
import 'package:food_app/features/splash/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: SplashView.routeName,
      onGenerateRoute: onGenerateRoutes,
    );
  }
}