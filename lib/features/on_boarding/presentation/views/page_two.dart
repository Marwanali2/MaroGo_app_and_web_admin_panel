import 'package:adv_ecommerce_app_and_web_admin_panel/features/on_boarding/presentation/views/widgets/onboarding_image_and_title.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const OnBoardingImageAndDiscription(
      lottieAsset: 'assets/lottie/chef_lottie.json',
      boldTitle: 'Order from choosen chef',
      discription:
          'Get all your loved foods in one once place,\nyou just place the orer we do the rest',
    );
  }
}
