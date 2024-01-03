import 'package:flutter/material.dart';
import 'package:folioport/enum/theme_key.dart';

import 'package:folioport/themes/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeViewmodel with ChangeNotifier {
  ThemeData? theme;
  ThemeValue? themeValue;
  late SharedPreferences _preferences;
  static const THEME_KEY = "THEME_KEY";

  initTheme() async {
    _preferences = await SharedPreferences.getInstance();
    themeValue = ThemeValue.values.byName(_preferences.getString(THEME_KEY) ?? "light");
    theme = themeValue == ThemeValue.dark ? AppTheme.darkMode() : AppTheme.lightMode();
    notifyListeners();
  }

  changeTheme() {
    if (themeValue == ThemeValue.light) {
      theme = AppTheme.darkMode();
      themeValue =ThemeValue.dark;
      _preferences.setString(THEME_KEY, "dark");
    } else {
      theme = AppTheme.lightMode();
      themeValue = ThemeValue.light;
      _preferences.setString(THEME_KEY, "light");
    }
    notifyListeners();
  }
}
