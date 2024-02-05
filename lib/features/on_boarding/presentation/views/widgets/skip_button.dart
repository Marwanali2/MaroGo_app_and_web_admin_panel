import 'package:adv_ecommerce_app_and_web_admin_panel/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:scale_button/scale_button.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    required this.activeIndex,
    required PageController pagecontroller,
  }) : _pagecontroller = pagecontroller;

  final int activeIndex;
  final PageController _pagecontroller;

  @override
  Widget build(BuildContext context) {
    return ScaleButton(
      bound: 0.5,
      duration: const Duration(milliseconds: 1500),
      child: Text(activeIndex != 3 ? "Skip" : "",
          style: TextStyles.font16GreyRegular),
      onTap: () {
        _pagecontroller.animateToPage(3,
            duration: const Duration(
              milliseconds: 500,
            ),
            curve: Curves.easeInOut);
      },
    );
  }
}
