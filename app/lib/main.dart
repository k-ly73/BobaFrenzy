import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/'
import './screens/home_page.dart';
import './screens/profile.dart';
import './screens/collections.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green[900]),
    
      home: HomeScreen(),
      routes: <String, WidgetBuilder> {
        "/profile": (BuildContext context) => new ProfilePage(),
        "/collections": (BuildContext context) => new CollectionsPage(),
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

