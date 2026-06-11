import 'package:flutter/material.dart';
import 'Quote.dart';
import 'QuoteCard.dart';

// void main() {
//   runApp(MaterialApp(
//     home:QuoteList(),
//   ));
// }

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes=[
    Quote(author:'anu', text:'hello'),
    Quote(text:'bye',author:'papu'),
    Quote(text: 'money', author: 'god'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar:AppBar(
        title: Text(
            "AWESOME QUOTES",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: quotes.map((quote){
          return QuoteCard(
              quote:quote,
              delete: (){
                setState(() {
                  quotes.remove(quote);
                });
              }
          );
        }).toList(),
      ),
    );
  }
}

