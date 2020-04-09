import "package:flutter/material.dart";
import "order_model.dart";


class CreateDrink extends StatelessWidget {

  List<DrinkModel> drinks = [
    DrinkModel("Black Milk Tea"),

  ];
  List<DrinkModel> toppings = [

  ];
  static const String routeName = "/create_drink";

  @override 
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index){
        title: Text(),
      }, 
    );
  }
}