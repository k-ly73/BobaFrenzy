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
      body: Column(
        children: [
          
        ],
        
      ),
      
      
    );
  }
}