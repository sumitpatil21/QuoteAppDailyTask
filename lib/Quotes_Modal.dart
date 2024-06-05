class quotesclass{
  String? quotesa;
  String? author;
  List<quotesclass> quotesList=[];
  quotesclass({this.quotesa,this.author});

  factory quotesclass.from(Map m1)
  {
    return quotesclass(author: m1["author"],quotesa: m1["quote"]);
  }
  quotesclass.toList(List l1)
  {
    for(int i=0;i<l1.length;i++)
      {
        quotesList.add(quotesclass.from(l1[i]));
      }
  }
}
