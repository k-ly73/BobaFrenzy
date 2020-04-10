import 'package:meta/meta.dart';

class DrinkOrder {
  int id;
  int quantity;

  Map<String, bool> drinks = new Map<String, bool>();
  Map<String, bool> toppings = new Map<String, bool>();

  DrinkOrder(){
    drinks.putIfAbsent("Black Milk Tea", () => false);
    drinks.putIfAbsent("Jasmine Milk Tea", () => false);
    drinks.putIfAbsent("Oolong Milk Tea", () => false);
    
    toppings.putIfAbsent("Boba", () => false);
    toppings.putIfAbsent("Lychee", () => false);
    toppings.putIfAbsent("Pudding", () => false);
  }


}

