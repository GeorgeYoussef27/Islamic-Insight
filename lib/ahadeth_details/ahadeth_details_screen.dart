import 'package:flutter/material.dart';
import 'package:islamy_app/home/Hadeth.dart';

class AhadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'ahadethdetails';

  const AhadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
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
                    style: TextStyle(fontSize: 25),
                  )),
                ),
              ),
            ],
          ),
        ));
  }
}
