import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/constants/app_colors.dart';
import 'package:food_app/core/constants/assets.dart';
import 'package:gap/gap.dart';
class SplashView extends StatelessWidget {
  static const String routeName = '/splash';

  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Gap(100),
              SvgPicture.asset(Assets.assetsImagesSvgLogo ,colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),)
               ,    Spacer(),
            FittedBox(child: Image.asset(Assets.assetsImagesPngSplashImage))
             
            ],
          ),
        ),
      ),
    );
  }
  
}
