import 'package:flutter/material.dart';
import 'package:islamy_app/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

import 'SelectedItem.dart';
import 'UnselectedItem.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(selected: settingsProvider.themeMode==ThemeMode.dark
              ? "Dark"
              :"Light"),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(
                    settingsProvider.themeMode == ThemeMode.dark
                        ? ThemeMode.light
                        : ThemeMode.dark);
              },
              child: UnselectedItem(
                  unselected: settingsProvider.themeMode == ThemeMode.dark
                      ? "Light"
                      : "Dark"))
        ],
      ),
    );
  }
}
