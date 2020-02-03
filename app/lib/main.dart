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
        

        )
      )
    );
  }
}

class BackgroundImage extends StatelessWidget {
  final String _assetPath;
  
  BackgroundImage(this._assetPath)
  @override 
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(
        _assetPath,
        fit: BoxFit.cover,
      )
    );
  }


}

// class RandomSelection extends StatefulWidget {
//   @override 
//   RandomWordsState createState() => RandomWordsState();
// }

// // class RandomWordsState extends State<RandomSelection> {

// // }