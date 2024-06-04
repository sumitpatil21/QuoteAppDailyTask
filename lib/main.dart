import 'package:flutter/material.dart';
import 'package:quoteappdailytask/Dialogue_Box.dart';
import 'package:quoteappdailytask/Quotes_Ui.dart';

void main()
{
  runApp(DailyTask());
}
class DailyTask extends StatelessWidget {
  const DailyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
      "/":(context) => QuotesFile(),
      },
    );
  }
}
