class quotesclass{
  String? quotes;
  String? author;
  List<quotesclass> quotesList=[];
  quotesclass({this.quotes,this.author});

  factory quotesclass.from(Map m1)
  {
    return quotesclass(author: m1["author"],quotes: m1["quotes"]);
  }
  quotesclass.toList(List l1)
  {
    for(int i=0;i<l1.length;i++)
      {
        quotesList.add(quotesclass.from(l1[i]));
      }
  }
}
