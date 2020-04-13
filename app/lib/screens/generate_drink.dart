import 'package:flutter/material.dart';



class GenerateDrink extends StatefulWidget {
  static const String routeName = "/generate_drink";

  @override
  createState() => _GenerateDrink();

}

class _GenerateDrink extends State<GenerateDrink> {


  @override 
  initState(){
    super.initState();
  }

  @override 
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(30),
            child: new Column(
              children: <Widget>[
                CircleAvatar(
                  child: Image.asset('Boba.png'),
                )
              ],
            )
          )
        )
      )
    );
  }
}