import 'package:adv_ecommerce_app_and_web_admin_panel/features/auth/presentation/views/login_screen.dart';
import 'package:adv_ecommerce_app_and_web_admin_panel/features/on_boarding/presentation/views/on_boarding.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kOnBoardingScreens = '/';
  static const kLoginScreen = '/loginScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kOnBoardingScreens,
        builder: (context, state) => const OnBoarding(),
      ),
      GoRoute(
        path: kLoginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
