import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy_app/ahadeth_details/ahadeth_details_screen.dart';
import 'package:islamy_app/home/home_screen.dart';
import 'package:islamy_app/providers/settingsProvider.dart';
import 'package:islamy_app/quran_details/quran_details_screen.dart';
import 'package:islamy_app/style/AppStyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {

  runApp(ChangeNotifierProvider(
      create: (context)=>SettingsProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(settingsProvider.language),
      debugShowCheckedModeBanner: false,
      title: 'Islamy',
      theme: AppStyle.lighTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: settingsProvider.themeMode,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        QuranDetailsScreen.routeName: (_) => QuranDetailsScreen(),
        AhadethDetailsScreen.routeName: (_) => AhadethDetailsScreen(),
      },
    );
  }
}
