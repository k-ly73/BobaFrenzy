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

    _list.add("Tea:  ${_drinkOrder.drink}");
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
        title: new Text("Return to Create"),
      ),
      
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.orange[50], Colors.orange[100]]
          ),
        ),
        child: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(bottom: 32.0),
              child: new Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)
                ),
                child: new Text(
                  "Review your selection",
                  
                  style: new TextStyle(
                    fontSize: 30,
                    fontFamily: "Cursive"
                  )
                )
              ),
            ),
            new Expanded(
              child: new ListView.builder(
                shrinkWrap: true,
                itemCount: _list.length,
                itemBuilder: (BuildContext context, int index){
                  return new ListTile(
                    title: Text(
                      _list.elementAt(index),
                      style: TextStyle(
                        
                      )
                    )                    
                  );
                }
              )
            ),
            new RaisedButton(

              child: new Text('Build a drink'),
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