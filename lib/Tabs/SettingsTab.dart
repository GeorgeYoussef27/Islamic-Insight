import 'package:flutter/material.dart';
import 'package:islamy_app/home/ThemeBottomSheet.dart';

import '../home/LanguageButtomSheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  context: context, builder: (context) => LannguageBottomSheet());
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: Theme.of(context).colorScheme.onPrimaryContainer)),
              child: Text(
                "English",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 18,
                ),
                ),
              ),
            ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Theme",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  context: context, builder: (context) => ThemeBottomSheet(),);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: Theme.of(context).colorScheme.onPrimaryContainer)),
              child: Text(
                "Dark",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 18,
                ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
