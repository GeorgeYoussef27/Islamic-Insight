import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/ahadeth_details/ahadeth_details_screen.dart';
import 'package:islamy_app/home/home_screen.dart';
import 'package:islamy_app/quran_details/quran_details_screen.dart';
import 'package:islamy_app/style/AppStyle.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islamy',
      theme: AppStyle.lighTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: AppStyle.isDark
          ?ThemeMode.dark
          :ThemeMode.light,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        QuranDetailsScreen.routeName: (_) => QuranDetailsScreen(),
        AhadethDetailsScreen.routeName: (_) => AhadethDetailsScreen(),
      },
    );
  }
}
