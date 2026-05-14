import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/constants/app_colors.dart';
import 'package:food_app/core/constants/assets.dart';

class SplashView extends StatefulWidget {
  static const String routeName = '/splash';

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.12),

            SvgPicture.asset(
              Assets.assetsImagesSvgLogo,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Image.asset(
                Assets.assetsImagesPngSplashImage,
                width: size.width,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
