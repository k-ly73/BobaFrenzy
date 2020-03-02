import 'package:flutter/material.dart';
import 'drawer.dart';

class HomeScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(     
      ),

      drawer: MenuDrawer(),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.orange[50], Colors.orange[100]]
                ),
              )
            ),
            
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.local_drink,
                )    , 
              ),
              Text(
                "Welcome to Boba Frenzy you basic bitch",
                style: TextStyle(
                  fontFamily: "Cursive",
                  fontSize: 30,
                )
              ),
            ],
          )
        ],
      )
    );
  }
}