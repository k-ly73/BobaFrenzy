import 'package:flutter/material.dart';
import 'login.dart';


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
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    child: Text(
                      "Boba Frenzy",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: "Cursive"

                      )
                      
                
                    ),
                  ),
             
                  
                ],
              )
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.local_drink
            ),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
                color: Colors.brown
              ),
            ),
            onTap: () 
            {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("/home_page");
      
            } 
            
          ),
          ListTile(
            leading: Icon(
              Icons.person
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
                color: Colors.brown
              ),
              
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("/profile");
              
            } 
          ),
          ListTile(
            leading: Icon(
              Icons.local_drink
            ),
            title: Text(
              'Create a Drink',
              style: TextStyle(
                fontSize: 18,
                color: Colors.brown
              ),
            ),
            onTap: () 
            {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed("/create_drink");
      
            } 
            
          ),

        ]
      )
    );
    
  }
}