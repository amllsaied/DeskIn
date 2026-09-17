import 'package:animate_do/animate_do.dart';
import 'package:deskin_app/core/constances/app_images.dart';
import 'package:deskin_app/core/constances/hard_strings.dart';
import 'package:deskin_app/core/theme/app_colores.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ZoomIn(
              duration: const Duration(milliseconds: 1200),
              curve: Curves.easeOutBack,
              child: Image.asset(
                AppImages.deskinImage,
                width: 300,
                height: 300,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInLeft(
                child: Text(
                  AppStrings.find,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              FadeInUp(
                child: Text(
                  '•',
                  style: TextStyle(fontSize: 30, color: AppColors.accent),
                ),
              ),
              const SizedBox(width: 8),
              FadeInUp(
                child: Text(
                  AppStrings.book,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              FadeInRight(
                child: Text(
                  '•',
                  style: TextStyle(fontSize: 30, color: AppColors.accent),
                ),
              ),
              const SizedBox(width: 8),
              FadeInRight(
                child: Text(
                  AppStrings.work,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
