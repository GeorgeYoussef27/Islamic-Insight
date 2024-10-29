import 'package:flutter/material.dart';

class AppStyle{
  static bool isDark = true;
  static const Color lightPrimary = Color(0xffB7935F);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color darkSecondary = Color(0xffFACC1D);
  static ThemeData lighTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
        displayMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black ,
    ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: lightPrimary,
      )
    ),
      cardTheme: CardTheme(
        color: Colors.white,
        elevation: 15,
        margin: EdgeInsets.all(20),
      ),
      dividerTheme: DividerThemeData(
        color: lightPrimary,
        thickness: 2,
      ),
      appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.black
          )),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        primary: lightPrimary,
        secondary: lightPrimary.withOpacity(0.57),
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onPrimaryContainer: lightPrimary,
        onSecondaryContainer: Colors.black,
      ),
      useMaterial3: true,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightPrimary,
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 35,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 35,
          )));
  static ThemeData darkTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: darkPrimary
      ),
      textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w400
        ),
        displayMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: darkSecondary,
        ),
          headlineMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: darkSecondary,
          )
      ),
      cardTheme: CardTheme(
        surfaceTintColor: darkPrimary,
        color: darkPrimary,
        elevation: 15,
        margin: EdgeInsets.all(20),
      ),
      dividerColor: darkSecondary,
      dividerTheme: DividerThemeData(
        color: darkSecondary,
        thickness: 2,
      ),
      appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme:IconThemeData(
            color: Colors.white
          ) ),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        primary: darkPrimary,
        secondary: darkSecondary,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onPrimaryContainer: darkSecondary,
        onSecondaryContainer: Colors.white,
      ),
      useMaterial3: true,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: darkPrimary,
          selectedItemColor: darkSecondary,
          selectedIconTheme: IconThemeData(
            color: darkSecondary,
            size: 35,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 35,
          )));
}