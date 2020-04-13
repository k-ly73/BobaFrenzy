import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class Database{
  var _firebaseRef = FirebaseDatabase().reference().child("drinks");
  TextEditingController _txtCtrl = TextEditingController();
  
}



