import 'package:flutter/material.dart';
import './screens/login.dart';
// import 'package:google_sign_in/';
import './screens/home_page.dart';
import './screens/profile.dart';
import './screens/collections.dart';
import './screens/add_tea.dart';
import './screens/intro.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green[900]),
      
      home: CreateDrink(),
      routes: <String, WidgetBuilder> {
        "/profile": (BuildContext context) => new ProfilePage(),
        "/collections": (BuildContext context) => new CollectionsPage(),
        "/create_drink": (BuildContext context) => new CreateDrink(),
        "/login": (BuildContext context) => new LoginPage(),
      }
    );
  }
}

 


// class BackgroundImage extends StatelessWidget {
//   final String _assetPath;
  
//   BackgroundImage(this._assetPath);
//   @override 
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: BoxConstraints.expand(
//         height: 603,
//       ),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomLeft,
//           colors: [Colors.orange[50], Colors.orange[100]],
//           tileMode: TileMode.repeated,
//         )
//       ),
//     );
//   }
// }

