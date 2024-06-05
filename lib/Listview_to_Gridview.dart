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
    );
  }

  GridView buildGridView() {
    return GridView.builder(
      itemCount: quotesvar!.quotesList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => ListTile(
        title: Text(quotesvar!.quotesList[index].quotesa!),
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        title: Text("sumit"),
      ),
    );
  }
}

int x = 1;
bool isGrid = false;
