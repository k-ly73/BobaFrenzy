
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login.dart';

// class Database {
//   final CollectionReference userCollection =
//     Firestore.instance.collection('user');

 
 
// }

class User {
  String name;
  User (this.name);

  User.fromSnapshot(DataSnapshot snapshot)
  : name = snapshot.value['user_name'];

  toJson() {
    return {
      'user_name': name,
    };
  }
}




