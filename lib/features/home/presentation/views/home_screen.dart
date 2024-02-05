import 'package:adv_ecommerce_app_and_web_admin_panel/core/theming/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTile(
              value: themeState.getDarkTheme,
              onChanged: (value) {
                setState(() {
                  themeState.setDarkThemeProvider = value;
                });
              },
            ),
            const Text('xxxxx'),
            const Card(child: Text('xxxxxxxxxxx')),
          ],
        ),
      ),
    );
  }
}
