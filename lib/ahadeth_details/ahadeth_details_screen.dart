import 'package:flutter/material.dart';
import 'package:islamy_app/home/Hadeth.dart';
import 'package:islamy_app/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

import '../style/AppStyle.dart';

class AhadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'ahadethdetails';

  const AhadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(provider.themeMode == ThemeMode.dark
                ?"assets/images/home_dark_background.png"
                :"assets/images/background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  child: SingleChildScrollView(
                      child: Text(
                    textAlign: TextAlign.center,
                    args.content,
                    style: Theme.of(context).textTheme.displayMedium,
                  )),
                ),
              ),
            ],
          ),
        ));
  }
}
