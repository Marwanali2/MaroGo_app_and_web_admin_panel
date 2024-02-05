import 'package:adv_ecommerce_app_and_web_admin_panel/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class OnBoardingImageAndDiscription extends StatelessWidget {
  const OnBoardingImageAndDiscription({
    super.key,
    required this.lottieAsset,
    required this.boldTitle,
    required this.discription,
  });
  final String lottieAsset;
  final String boldTitle;
  final String discription;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 70.h, right: 68.w, left: 68.w),
          child: Center(
            child: SizedBox(
              height: 292.0.h,
              width: 300.0.w,
              child: Lottie.asset(
                lottieAsset,
                reverse: true,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 71.w),
          child: Text(
            boldTitle,
            style: TextStyles.font24BlackcExtraBold,
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Text(
            discription,
            textAlign: TextAlign.center,
            style: TextStyles.font16GreyRegular,
          ),
        )
      ],
    );
  }
}
