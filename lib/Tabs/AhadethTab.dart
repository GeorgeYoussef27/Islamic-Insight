import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/ahadeth_details/ahadeth_details_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/home/Hadeth.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  @override
  void initState() {
    super.initState();
    loadFile();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset("assets/images/hadith_header.png")),
        Divider(),
        Text(AppLocalizations.of(context)!.ahadeth,
            style: Theme.of(context).textTheme.titleMedium),
        Divider(),
        Expanded(
          flex: 2,
          child: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, AhadethDetailsScreen.routeName,
                          arguments: ahadethList[index]);
                    },
                    child: Text(
                      ahadethList[index].title,
                      style:
                          Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: ahadethList.length),
        )
      ],
    );
  }

  List<Hadeth> ahadethList = [];

  loadFile() async {
    String fileContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = fileContent.split("#");
    for (int i = 0; i < ahadeth.length; i++) {
      List<String> hadethLines = ahadeth[i].trim().split("\n");
      String hadethTitle = hadethLines[0];
      hadethLines.removeAt(0);
      String hadethContent = hadethLines.join(" ");
      ahadethList.add(Hadeth(hadethTitle, hadethContent));
    }
    setState(() {});
  }
}
