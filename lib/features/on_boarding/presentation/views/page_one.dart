import 'package:adv_ecommerce_app_and_web_admin_panel/features/on_boarding/presentation/views/widgets/onboarding_image_and_title.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnBoardingImageAndDiscription(
      lottieAsset: 'assets/lottie/food_lottie.json',
      boldTitle: 'All your favorites',
      discription:
          'Get all your loved foods in one once place,\nyou just place the orer we do the rest',
    );
  }
}
