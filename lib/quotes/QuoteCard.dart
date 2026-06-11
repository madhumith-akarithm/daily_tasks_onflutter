import 'package:flutter/material.dart';
//import 'package:quotes/Quote.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {

  //stless should not have variable as make it final
  final Quote quote;
  final  VoidCallback delete; //function

  QuoteCard({required this.quote, required this.delete}) ;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10.0),
            TextButton.icon(
                onPressed: delete,
                label:Text("del quote"),
                icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}


