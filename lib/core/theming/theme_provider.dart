import 'package:adv_ecommerce_app_and_web_admin_panel/core/theming/theme_prefs.dart';
import 'package:flutter/foundation.dart';

class DarkThemeProvider with ChangeNotifier {
  bool _darkTheme = false;
  bool get getDarkTheme => _darkTheme;
  DarkThemePrefs darkThemePrefs = DarkThemePrefs();
  set setDarkThemeProvider(bool value) {
    _darkTheme = value;
    darkThemePrefs.setDarkTheme(value);
    notifyListeners();
  }
}
