import 'package:adv_ecommerce_app_and_web_admin_panel/features/on_boarding/presentation/views/page_four.dart';
import 'package:adv_ecommerce_app_and_web_admin_panel/features/on_boarding/presentation/views/page_one.dart';
import 'package:adv_ecommerce_app_and_web_admin_panel/features/on_boarding/presentation/views/page_three.dart';
import 'package:adv_ecommerce_app_and_web_admin_panel/features/on_boarding/presentation/views/page_two.dart';
import 'package:adv_ecommerce_app_and_web_admin_panel/features/on_boarding/presentation/views/widgets/dots_indicator.dart';
import 'package:adv_ecommerce_app_and_web_admin_panel/features/on_boarding/presentation/views/widgets/next_button.dart';
import 'package:adv_ecommerce_app_and_web_admin_panel/features/on_boarding/presentation/views/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pagecontroller = PageController(
    initialPage: 0,
    viewportFraction: 2,
  );

  int activeIndex = 0;

  final List<Widget> _screens = const [
    InitialPage(),
    PageTwo(),
    PageThree(),
    LastPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            pagesViewList(context),
            SizedBox(
              height: 32.h,
            ),
            DotsIndicator(screens: _screens, activeIndex: activeIndex),
            SizedBox(
              height: 15.h,
            ),
            NextButton(
                activeIndex: activeIndex, pagecontroller: _pagecontroller),
            SizedBox(
              height: 16.h,
            ),
            SkipButton(
                activeIndex: activeIndex, pagecontroller: _pagecontroller),
          ],
        ),
      ),
    );
  }

  SizedBox pagesViewList(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.72,
      width: MediaQuery.sizeOf(context).width,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: _pagecontroller,
        itemCount: _screens.length,
        onPageChanged: (value) {
          setState(() {
            activeIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return _screens[index];
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pagecontroller.dispose();
  }
}
