import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.light;


  changeTheme(ThemeMode newMode){
    if(newMode == themeMode) return;
    themeMode = newMode;
    notifyListeners();
  }

  String language = "en";
  changeLanguage(String newLanguage){
    if(newLanguage == language) return;
    language = newLanguage;
    notifyListeners();
  }

}