import 'package:app/screens/auth_result.dart';
import 'package:flutter/material.dart';
import './screens/login.dart';
import './screens/home_page.dart';
import './screens/profile.dart';
import './screens/collections.dart';
import './screens/order_screen.dart';
import './screens/intro.dart';
import './screens/review_order.dart';
import './screens/root.dart';
import './screens/generate_drink.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green[900]),
      
      home: IntroScreen(),
      routes: <String, WidgetBuilder> {
        "/profile": (BuildContext context) => new ProfilePage(),
        "/collections": (BuildContext context) => new CollectionsPage(),
        "/create_drink": (BuildContext context) => new CreateDrink(),
        "/login": (BuildContext context) => new LoginPage(),
        "/review": (BuildContext context) => new ReviewCreation(),
        "/generate_drink":(BuildContext context) => new GenerateDrink()
      }
    );
  }
}

 
