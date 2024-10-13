import 'package:flutter/material.dart';
import 'package:islamy_app/ahadeth_details/ahadeth_details_screen.dart';
import 'package:islamy_app/home/home_screen.dart';
import 'package:islamy_app/quran_details/quran_details_screen.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islamy',
      theme: ThemeData(
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 15,
          margin: EdgeInsets.all(20),
        ),
          dividerTheme: DividerThemeData(
            color: Color(0xffB7935F),
            thickness: 2,
          ),
          appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent),
          scaffoldBackgroundColor: Colors.transparent,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            primary: Color(0xffB7935F),
            secondary: Color(0xffB7935F).withOpacity(0.57),
            onPrimary: Colors.white,
            onSecondary: Colors.black,
          ),
          useMaterial3: true,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Color(0xffB7935F),
              selectedItemColor: Colors.black,
              selectedIconTheme: IconThemeData(
                color: Colors.black,
                size: 35,
              ),
              unselectedIconTheme: IconThemeData(
                color: Colors.white,
                size: 35,
              ))),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        QuranDetailsScreen.routeName: (_) => QuranDetailsScreen(),
        AhadethDetailsScreen.routeName: (_) => AhadethDetailsScreen(),
      },
    );
  }
}
