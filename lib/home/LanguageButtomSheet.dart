import 'package:flutter/material.dart';
import 'package:islamy_app/home/SelectedItem.dart';
import 'package:islamy_app/home/UnselectedItem.dart';

class LannguageBottomSheet extends StatelessWidget {
  const LannguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(selected: "English"),
          SizedBox(
            height: 20,
          ),
          UnselectedItem(unselected: "العربية")
        ],
      ),
    );
  }
}
