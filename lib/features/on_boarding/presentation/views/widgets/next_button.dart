import 'package:adv_ecommerce_app_and_web_admin_panel/core/theming/colors.dart';
import 'package:adv_ecommerce_app_and_web_admin_panel/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scale_button/scale_button.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required this.activeIndex,
    required PageController pagecontroller,
  }) : _pagecontroller = pagecontroller;

  final int activeIndex;
  final PageController _pagecontroller;

  @override
  Widget build(BuildContext context) {
    return ScaleButton(
      reverse: true,
      bound: 0.5,
      child: Container(
        height: 62.0.h,
        width: 327.0.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ColorsManager.mainOrange,
          borderRadius: BorderRadius.all(Radius.circular(12.0.r)),
        ),
        child: Text(
          activeIndex != 3 ? "Next" : "Get Started",
          style: TextStyles.font14WhiteBold,
        ),
      ),
      onTap: () {
        _pagecontroller.animateToPage(
          activeIndex + 1,
          duration: const Duration(
            milliseconds: 500,
          ),
          curve: Curves.easeInOut,
        );
      },
    );
  }
}
