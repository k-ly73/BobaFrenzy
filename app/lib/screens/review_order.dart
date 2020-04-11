import 'package:flutter/material.dart';
import 'drink_model.dart';

class ReviewCreation extends StatelessWidget{  
  static const String routeName = '/review';

  DrinkOrder _drinkOrder;
  List<String> _list = new List<String>(); 

  Review({order: null}){
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
            new Text("Review your creation"),
            new Expanded(
              child: new ListView.builder(
                itemCount: _list.length,
                itemBuilder: (BuildContext context, int index){
                  return new Text(_list.elementAt(index));
                }
              )
            )
          ],
        )
      )
    );
  }
}