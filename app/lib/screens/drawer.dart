import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              top: 30,
            ),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('')
                      ) 
                    )
                  ),
                  Text("Menu")
                ],
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.arrow_upward),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Collections',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Create a Drink',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ]
      )
    );
    
  }
}