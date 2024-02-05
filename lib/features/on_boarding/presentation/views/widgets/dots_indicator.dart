import 'package:adv_ecommerce_app_and_web_admin_panel/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required List<Widget> screens,
    required this.activeIndex,
  }) : _screens = screens;

  final List<Widget> _screens;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        _screens.length,
        (index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: CircleAvatar(
              maxRadius: 5.r,
              child: Container(
                decoration: BoxDecoration(
                  color: activeIndex == index
                      ? ColorsManager.mainOrange
                      : Colors.orangeAccent.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(
                    18.r,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
