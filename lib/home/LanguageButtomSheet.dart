import 'package:flutter/material.dart';
import 'package:islamy_app/home/SelectedItem.dart';
import 'package:islamy_app/home/UnselectedItem.dart';
import 'package:islamy_app/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

class LannguageBottomSheet extends StatelessWidget {
  const LannguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(selected: provider.language == "ar"
          ?"العربية"
          :"English"),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              provider.changeLanguage(provider.language == "ar"
              ? "en"
              : "ar");
            },
              child: UnselectedItem(unselected: provider.language == "ar"
                  ? "English"
                  : "العربية"))
          ],
      ),
    );
  }
}
