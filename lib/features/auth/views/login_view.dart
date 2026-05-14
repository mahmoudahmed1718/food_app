import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/constants/app_colors.dart';
import 'package:food_app/core/constants/assets.dart';
import 'package:gap/gap.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
static const String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
  body: Column(children: [
    Gap(200),
    SvgPicture.asset(Assets.assetsImagesSvgLogo,colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),)
  ],),
    );
  }
}