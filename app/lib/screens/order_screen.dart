import "package:flutter/material.dart";
import "order_model.dart";


class CreateDrink extends StatefulWidget {
  @override
  _OrderState createState() => new _OrderState();

  static const String routeName = "/create_drink";
}
class _OrderState extends State<CreateDrink> {

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
              new DropdownButton(
                value: _
              )
            ],
          )
        )
      )
    );
  }
}