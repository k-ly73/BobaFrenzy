import "package:flutter/material.dart";
import "drink_model.dart";
import "review_order.dart";


class CreateDrink extends StatefulWidget {
  static const String routeName = "/create_drink";
  
  @override
  _OrderState createState() => new _OrderState();


}

class _OrderState extends State<CreateDrink> {

  DrinkOrder _drinkOrder = new DrinkOrder();
  
  void _setSelection(String value){
    setState((){
      _drinkOrder.drink = value;
    });
  }

  void _setTopping(int index, bool value){
    setState((){
      String key = _drinkOrder.toppings.keys.elementAt(index);
      _drinkOrder.toppings[key] = value;
    });
  }

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
              new DropdownButton<String>(
                value: _drinkOrder.drink,
                items: DrinkOrder.drinks.map((String value) {
                  return new DropdownMenuItem(
                    value: value,
                    child: new Row(
                      children: <Widget>[
                        new Icon(Icons.local_drink),
                        new Text('${value}'),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String value){
                  _setSelection(value);
                } 
              ),
              new Expanded(
                child: new ListView.builder(
                  shrinkWrap: true,
                  itemCount: _drinkOrder.toppings.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,

                      title: new Text(_drinkOrder.toppings.keys.elementAt(index)),
                      value: _drinkOrder.toppings.values.elementAt(index),
                      onChanged: (bool value){
                        _setTopping(index, value);
                      },
                    );
                  }
                )
              ),
              new RaisedButton(
                padding: EdgeInsets.all(8.0),
                child: Text("Continue"),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new ReviewCreation())
                  );

                }


              )
            ],
          )
        )
      )
    );
  }
}

class Review {
}