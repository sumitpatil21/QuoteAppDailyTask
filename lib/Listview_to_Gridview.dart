import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quoteappdailytask/Quotes_Modal.dart';
import 'package:quoteappdailytask/quotes_json_file.dart';

quotesclass? quotesvar;

class ListviewtoGridview extends StatefulWidget {
  const ListviewtoGridview({super.key});

  @override
  State<ListviewtoGridview> createState() => _ListviewtoGridviewState();
}

class _ListviewtoGridviewState extends State<ListviewtoGridview> {
  @override
  void initState() {

    setState(() {
      quotesvar = quotesclass.toList(quotes);
    });

    print(quotesvar!.quotesList);
    // TODO: implement initState
    super.initState();
  }
  Widget random_Funcat() {
    int randomIndex = getRandomIndex();
    return AlertDialog(
      title: Text(quotesvar!.quotesList[randomIndex].quotesa!),
      actions: [
        TextButton(
          onPressed: () {
          Navigator.
            of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Listview to Gridview",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {

                isGrid = !isGrid;

              });
            },
            icon: Icon(
              Icons.change_circle,
              size: 50,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: (isGrid)?buildGridView():buildListView(),
      floatingActionButton: FloatingActionButton(onPressed: () {
       setState(() {
        showDialog(context: context, builder:(context) => random_Funcat(),);
       });
      },backgroundColor: Colors.blue,),
    );
  }



  GridView buildGridView() {
    return GridView.builder(
      itemCount: quotesvar!.quotesList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => Card(
        color: colorArray[index],
        child: ListTile(
          title: Text(quotesvar!.quotesList[index].quotesa!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          subtitle: Text(quotesvar!.quotesList[index].author!,style: TextStyle(fontWeight: FontWeight.w700),),
        ),
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: quotesvar!.quotesList.length,
      itemBuilder: (context, index) => Card(
        color: colorArray[index],
        child: ListTile(
          title: Text(quotesvar!.quotesList[index].quotesa!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          subtitle: Text(quotesvar!.quotesList[index].author!,style: TextStyle(fontWeight: FontWeight.w700),),
        ),
      ),
    );
  }
}
bool isGrid = false;
int getRandomIndex() {
  return Random().nextInt(quotesvar!.quotesList.length);
}


List<Color> colorArray = [
  Color(0xFFFF6633), Color(0xFFFFB399), Color(0xFFFF33FF),
  Color(0xFFFFFF99), Color(0xFF00B3E6), Color(0xFFE6B333),
  Color(0xFF3366E6), Color(0xFF999966), Color(0xFF99FF99),
  Color(0xFFB34D4D), Color(0xFF80B300), Color(0xFF809900),
  Color(0xFFE6B3B3), Color(0xFF6680B3), Color(0xFF66991A),
  Color(0xFFFF99E6), Color(0xFFCCFF1A), Color(0xFFFF1A66),
  Color(0xFFE6331A), Color(0xFF33FFCC), Color(0xFF66994D),
  Color(0xFFB366CC), Color(0xFF4D8000), Color(0xFFB33300),
  Color(0xFFCC80CC), Color(0xFF66664D), Color(0xFF991AFF),
  Color(0xFFE666FF), Color(0xFF4DB3FF), Color(0xFF1AB399),
  Color(0xFFE666B3), Color(0xFF33991A), Color(0xFFCC9999),
  Color(0xFFB3B31A), Color(0xFF00E680), Color(0xFF4D8066),
  Color(0xFF809980), Color(0xFFE6FF80), Color(0xFF1AFF33),
  Color(0xFF999933), Color(0xFFFF3380), Color(0xFFCCCC00),
  Color(0xFF66E64D), Color(0xFF4D80CC), Color(0xFF9900B3),
  Color(0xFFE64D66), Color(0xFF4DB380), Color(0xFFFF4D4D),
  Color(0xFF99E6E6), Color(0xFF6666FF)
];