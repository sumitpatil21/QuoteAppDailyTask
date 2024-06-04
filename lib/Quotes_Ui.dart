import 'package:flutter/material.dart';
import 'package:quoteappdailytask/Quotes_Modal.dart';
import 'package:quoteappdailytask/Quotes_Modal.dart';
import 'package:quoteappdailytask/quotes_json_file.dart';

import 'Quotes_Modal.dart';
import 'Quotes_Modal.dart';
import 'Quotes_Modal.dart';
import 'Quotes_Modal.dart';
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
          ...List.generate(quotesclass.quotesList., (index) => null)
        ],
      ),
    );
  }
}
