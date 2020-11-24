import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author:'Justin Enigma', text:'I am lucky                   x1' ),
    Quote(author:'Justin Enigma', text:'I am lucky                   x2' ),
    Quote(author:'Justin Enigma', text:'I am lucky                   x3' )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
        ),
      body: Column(
          children: quotes.map((quote)  => QuoteCard(
              quote: quote,

            delete: () {
                setState(() {
                  quotes.remove(quote);
                });
            }
          )).toList(),
          //map cycles through each data in the list so this one
          //cycles through quotes and return it one by one
      )
    );
  }
}
