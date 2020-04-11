import "package:flutter/material.dart";
import "drink_model.dart";
import "review_order.dart";


class CreateDrink extends StatefulWidget {
  @override
  _OrderState createState() => new _OrderState();

  static const String routeName = "/create_drink";
}
class _OrderState extends State<CreateDrink> {

  DrinkOrder _drinkOrder = new DrinkOrder();


  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Create Your Drink"),
      ),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Expanded(
                child: new ListView.builder(
                  shrinkWrap: true,
                  itemCount: _drinkOrder.drinks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,

                      title: new Text(_drinkOrder.drinks.keys.elementAt(index)),
                      value: _drinkOrder.toppings.values.elementAt(index),
                      onChanged: null,
                    );
                  }
                )
              )
            ],
          )
        )
      )
    );
  }
}