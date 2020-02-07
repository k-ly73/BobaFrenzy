import 'package:flutter/material.dart';

class Routes {
  static const String collections = CollectionsPage.routeName;
  static const String profile = ProfilePage.routeName;
}

class ProfilePage extends StatelessWidget {
  static const String routeName = '/profile';

  @override 
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

class CollectionsPage extends StatelessWidget {
  static const String routeName = "/collections";
  @override 
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
