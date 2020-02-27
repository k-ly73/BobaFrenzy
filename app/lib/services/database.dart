import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final CollectionReference drinkCollection = Firestore.instance.collection('drinks');
}