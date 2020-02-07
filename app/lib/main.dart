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
    );
  }
}

class DrawerMenu extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          createHeader(),
          createDrawerItem()
        ]
      )
    );
  }
  Widget createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration (
        color: Colors.green,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Text("Menu",
              style: TextStyle (
                color: Colors.white,
              )
            ),
          )
        ],
      )

    ); 
  }

  Widget createDrawerItem({IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile( 
        title: Row(
          children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          ),
        ], 
      )
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

