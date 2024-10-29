import 'package:flutter/material.dart';

class UnselectedItem extends StatelessWidget {
  String unselected;
  UnselectedItem({required this.unselected});

  @override
  Widget build(BuildContext context) {
    return Text(
      unselected,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
