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
      itemBuilder: (context, index) => ListTile(
        title: Text(quotesvar!.quotesList[index].quotesa!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
        subtitle: Text(quotesvar!.quotesList[index].author!,style: TextStyle(fontWeight: FontWeight.w700),),
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: quotesvar!.quotesList.length,
      itemBuilder: (context, index) => Card(
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


