import 'package:flutter/material.dart';
import 'package:shedule_ease1/storage_manager.dart';

class ThemeNotifier with ChangeNotifier {
  static final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    // accentColor: Colors.white,
    // accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
  );

  static final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFE5E5E5),
    // accentColor: Colors.black,
    //accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
  );

  /* late ThemeData _themeData = lightTheme;
  ThemeData getTheme() {
    return _themeData ?? lightTheme;
  } */

  ThemeNotifier() {
    StorageManager.readData('themeMode').then((value) {
      print('value read from storage: ' + value.toString());
      var themeMode = value ?? 'light';
      if (themeMode == 'light') {
        // _themeData = lightTheme;
      } else {
        print('setting dark theme');
        // _themeData = darkTheme;
      }
      notifyListeners();
    });
  }

  void setDarkMode() async {
    //_themeData = darkTheme;
    StorageManager.saveData('themeMode', 'dark');
    notifyListeners();
  }

  void setLightMode() async {
    // _themeData = lightTheme;
    StorageManager.saveData('themeMode', 'light');
    notifyListeners();
  }
}
