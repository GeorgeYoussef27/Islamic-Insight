import 'package:flutter/material.dart';
import 'package:islamy_app/Tabs/AhadethTab.dart';
import 'package:islamy_app/Tabs/QuranTab.dart';
import 'package:islamy_app/Tabs/SebhaTab.dart';
import 'package:islamy_app/Tabs/SettingsTab.dart';
import 'package:islamy_app/style/AppStyle.dart';

import '../Tabs/RadioTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List<Widget> tabs = [
    QurantabTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];
//how to hide statue bar in android
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppStyle.isDark
                  ?"assets/images/home_dark_background.png"
                  :"assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Islami"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex:selectedIndex,
            onTap: (index){
            setState(() {
              selectedIndex = index;
            });
            },
            items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: ImageIcon(AssetImage("assets/images/moshaf.png")),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
            label: "Ahadeth",
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: ImageIcon(AssetImage("assets/images/sebha.png")),
            label: "Tasbeeh",
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: ImageIcon(AssetImage("assets/images/radio.png")),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ]
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
