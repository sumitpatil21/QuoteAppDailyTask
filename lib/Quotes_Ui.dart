import 'package:flutter/material.dart';
import 'package:quoteappdailytask/Quotes_Modal.dart';
import 'package:quoteappdailytask/Quotes_Modal.dart';
import 'package:quoteappdailytask/quotes_json_file.dart';
 quotesclass? quotesClass;
class QuotesFile extends StatefulWidget {
  const QuotesFile({super.key});

  @override
  State<QuotesFile> createState() => _QuotesFileState();
}

class _QuotesFileState extends State<QuotesFile> {
  @override
  void initState() {
    quotesClass=quotesclass.toList(quotes);
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(quotesClass!.quotesList.length, (index) => ListTile(
            title: Text(quotesClass!.quotesList[index].quotesa!),
            subtitle: Text(quotesClass!.quotesList[index].author!),
          ))
        ],
      ),
    );
  }
}
