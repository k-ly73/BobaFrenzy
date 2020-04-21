import "package:flutter/material.dart";
import "drink_model.dart";
import "review_order.dart";
import 'drawer.dart';

 
class CreateDrink extends StatefulWidget {
  static const String routeName = "/create_drink";

  final String drinkKey;
  
  CreateDrink({Key key, this.drinkKey}) : super(key: key);
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
      drawer: MenuDrawer(),
      body: new Center(
        child: new Container(
           decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.orange[50], Colors.orange[100]]
          ),
        ),
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: new Text(
                  'Select your tea',
                  style: TextStyle(
                    fontSize: 30
                  )
                ),
              ),
            
              new DropdownButton<String>(
                value: _drinkOrder.drink,
                items: DrinkOrder.drinks.map((String value) {
                  return new DropdownMenuItem(
                    value: value,
                    child: new Row(
                      children: <Widget>[
                        new Icon(Icons.local_drink),
                        new SizedBox(
                          child: new Text(
                            '$value',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                       
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String value){
                  _setSelection(value);
                } 
              ),
              new Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: new Text(
                  'Select your toppings',
                  style: new TextStyle( 
                   
                    fontSize: 20,
                  )
                ),
              ),
             
              new Expanded(
                child: new ListView.builder(
                  shrinkWrap: true,
                  itemCount: _drinkOrder.toppings.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                    
                      title: new Text(
                        _drinkOrder.toppings.keys.elementAt(index),
                        style: TextStyle(
                          
                        )
                      ),
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
                    builder: (BuildContext context) => new ReviewCreation(order: _drinkOrder))
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
