import 'package:flutter/material.dart';
import 'drink_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReviewCreation extends StatelessWidget{  
  static const String routeName = '/review';

  DrinkOrder _drinkOrder;
  List<String> _list = new List<String>(); 

  ReviewCreation({order: null}){
    _drinkOrder = order;

    _list.add("Drink:  ${_drinkOrder.drink}");
    _list.add(" ");
    _list.add("Toppings: ");

    _drinkOrder.toppings.forEach((String name, bool value){
      if(value) _list.add(name);
    });

  }


  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Review "),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text(
              "Review your creation",
              style: new TextStyle(
                fontSize: 30
              )
            ),
            new Expanded(
              child: new ListView.builder(
                shrinkWrap: true,
                itemCount: _list.length,
                itemBuilder: (BuildContext context, int index){
                  return new Container(
                    child: Text(_list.elementAt(index))                    
                  );
                }
              )
            ),
            new RaisedButton(

              child: new Text('Make your drink'),
              onPressed : (){
                Navigator.of(context).pushNamed("/generate_drink");
              
              }
            )
          ],
        )
      )
    );
  }
}