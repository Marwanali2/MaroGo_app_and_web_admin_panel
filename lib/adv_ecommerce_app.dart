import 'package:adv_ecommerce_app_and_web_admin_panel/core/theming/theme_data.dart';
import 'package:adv_ecommerce_app_and_web_admin_panel/core/theming/theme_prefs.dart';
import 'package:adv_ecommerce_app_and_web_admin_panel/core/theming/theme_provider.dart';
import 'package:adv_ecommerce_app_and_web_admin_panel/features/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvEcommerceApp extends StatefulWidget {
  const AdvEcommerceApp({super.key});

  @override
  State<AdvEcommerceApp> createState() => _AdvEcommerceAppState();
}

class _AdvEcommerceAppState extends State<AdvEcommerceApp> {
  DarkThemeProvider darkThemeProvider = DarkThemeProvider();
  void getCurrentTheme() async {
    darkThemeProvider.setDarkThemeProvider =
        await DarkThemePrefs().getDarkTheme();
  }

  @override
  void initState() {
    super.initState();
    getCurrentTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return darkThemeProvider;
          },
        )
      ],
      child: Consumer<DarkThemeProvider>(
        builder: (context, darkThemeProvider, child) {
          return MaterialApp(
            theme: Styles.themeData(darkThemeProvider.getDarkTheme, context),
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
