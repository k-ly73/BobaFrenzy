import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green[900]),
      home: Scaffold(
        appBar: AppBar(title: Text("Boba Frenzy"),
        ),
        body: Column(
          children: [
            BackgroundImage("lib/assets/images/milk_tea.jpg"),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[],),
          ),
      )
    );
  }
}

class BackgroundImage extends StatelessWidget {
  final String _assetPath;
  
  BackgroundImage(this._assetPath);
  @override 
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 603,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/images/milk_tea.jpg"),
          fit: BoxFit.cover,
        )
      ),
    );
  }


}

// class RandomSelection extends StatefulWidget {
//   @override 
//   RandomWordsState createState() => RandomWordsState();
// }

// // class RandomWordsState extends State<RandomSelection> {

// // }