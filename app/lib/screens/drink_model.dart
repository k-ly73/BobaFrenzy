import 'package:firebase_database/firebase_database.dart';

class DrinkOrder {

  static List<String> drinks = <String>["Black Tea","Jasmine Tea","Oolong Tea","Wintermelon Tea"];

  String drink = drinks.elementAt(0);

  Map<String, bool> toppings = new Map<String, bool>();

  DrinkOrder({String drinkKey}){
    toppings.putIfAbsent("Milk", () => false);
    toppings.putIfAbsent("Boba", () => false);
    toppings.putIfAbsent("Lychee", () => false);
    toppings.putIfAbsent("Pudding", () => false);
  }


}

