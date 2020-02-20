import 'package:flutter/material.dart';
import 'drawer.dart';

class HomeScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boba Frenzy"),
        
      ),

      drawer: MenuDrawer(
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            constraints: 
              BoxConstraints.expand(
                height: 603,
              ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [Colors.orange[50], Colors.orange[100]],
                tileMode: TileMode.repeated,
              )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Hello",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black,
                  
                )
              )
            ],
          ),

        ],
        
      ),
      
      
    );
  }
}