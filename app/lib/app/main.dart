import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green[900]),
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boba Frenzy"),
        
      ),
      body: Column(
        children: [
          BackgroundImage("lib/assets/images/milk_tea.jpg"),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
                
              ),
              
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
             ListTile(
              title: Text("Profile"),
              onTap: () {
                Navigator.pop(context);
              }
            ),
            ListTile(
              title: Text("Create a Drink"),
              onTap: () {
                  Navigator.pop(context);
              }
          
            ),
            ListTile (
              title: Text("Collections"),
              onTap: () {
               Navigator.pop(context);
              }
            )
          ],
        ),
      ),
    );
  }
}
class BackgroundImage extends StatelessWidget {
  final String _assetPath;
  
  BackgroundImage(this._assetPath);
  @override 
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
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
    );
  }

}

class ProfilePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

class CollectionsPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
