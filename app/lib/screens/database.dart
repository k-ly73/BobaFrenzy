import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class Database{
  var _firebaseRef = FirebaseDatabase().reference().child("drinks");
  TextEditingController _txtCtrl = TextEditingController();

  String _getDateNow(){
    var dateNow = DateTime.now();
    var dateFormat = new DateFormat('yyyy-MM-dd');
    return dateFormat.format(dateNow);
  }
  createDrink(){
    _firebaseRef.push().set({
      "drink":_txtCtrl.text,
      "timestamp": _getDateNow,
      
    });
  }
  
}



