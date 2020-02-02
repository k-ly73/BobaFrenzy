import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final wordPair = WordPair.random();
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green[900]),
      home: Scaffold(
        appBar: AppBar(title: Text("Word Generator"),
       

        
      ))
    );
  }
}

// class RandomSelection extends StatefulWidget {
//   @override 
//   RandomWordsState createState() => RandomWordsState();
// }

// // class RandomWordsState extends State<RandomSelection> {

// // }