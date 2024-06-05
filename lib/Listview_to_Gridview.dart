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
    quotesvar=quotesclass.toList(quotes);

    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Listview to Gridview",style: TextStyle(fontSize: 20),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
           setState(() {
            x++;
              if(x%2==0)
              {
                toggaview=buildListView();
              }
              else
              {
                toggaview=buildGridView();
              }
           });
          },icon: Icon(Icons.change_circle,size: 50,color: Colors.black,),),
        ],
      ),
      body: toggaview,
    );
  }

  GridView buildGridView() {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder:(context, index) => ListTile(
      title: Text("sumit"),
    ),);
  }

  ListView buildListView() {
    return ListView.builder(itemBuilder: (context, index) => ListTile(
      title: Text("sumit"),
    ),);
  }
}
int x=0;
Widget? toggaview;