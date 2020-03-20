import 'package:flutter/material.dart';

class CollectionsPage extends StatelessWidget {
  static const String routeName = "/collections";

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Collections'),
        ),
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[

              ],
            )
          ],
        )
        
    );
  }
}
