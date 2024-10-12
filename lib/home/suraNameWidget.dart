import 'package:flutter/material.dart';
import 'package:islamy_app/quran_details/quran_details_screen.dart';

class SuraNameWidget extends StatelessWidget {
  final String suraName;
  final int suraNumber;
  final int index;
  const SuraNameWidget(
      {super.key, required this.suraName, required this.suraNumber, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, QuranDetailsScreen.routeName,arguments: 
        QuranArgs(suraName, index));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              suraName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 40,
            width: 2,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Expanded(
            child: Text(
              suraNumber.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
