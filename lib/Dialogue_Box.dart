import 'package:flutter/material.dart';
class DialogueBox extends StatefulWidget {
  const DialogueBox({super.key});

  @override
  State<DialogueBox> createState() => _DialogueBoxState();
}

class _DialogueBoxState extends State<DialogueBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed:() => simple(context), child: Text("Simple")),
              ElevatedButton(onPressed:() => Alert(context),child: Text("2")),
              ElevatedButton(onPressed: () {

                Full(context);

              }, child: Text("3")),
            ],
          ),

        ],
      ),
    );
  }
}
simple(context){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Text("Gallery",style: TextStyle(color: Colors.black),),
      content: Text("Delete this Image",style: TextStyle(color: Colors.black,fontSize: 18),),
    );
  });
}

Alert(context)
{
  showDialog(context: context, builder: (context) => AlertDialog(
    title: Text("Do you want delete this box"),
    content: Text("Fixed"),
    actions: [
      TextButton(onPressed: () {
        Navigator.of(context).pop();

      }, child:Text("Yes")),
      TextButton(onPressed: () {
        Navigator.of(context).pop();
      }, child: Text("No")),
    ],
  ),);
}

Full(context)
{
  showDialog(context: context, builder:(context) => Dialog.fullscreen(
    backgroundColor: Colors.grey,
    child: Padding(
      padding: EdgeInsets.all(15),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(onPressed: () => Navigator.of(context).pop(), icon: Icon(Icons.close)),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Full Screen Detail",style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    ),
  ),);
}
