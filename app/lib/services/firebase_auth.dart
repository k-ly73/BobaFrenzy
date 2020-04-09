// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// Future<AuthResult> createUserWithEmailAndPassword({
//   @required String email,
//   @required String password,
// })async {
//   assert(email != null);
//   assert(password != null);
//   final Map<String, dynamic> data =
//     await channel.invokeMapMethod<String, dynamic>(
//       'createUserWithEmailAndPassword',
//       <String, String>{'email': email, 'password': password, 'app': app.name},
//     );
//     final AuthResult authResult = AuthResult._(data, app);
//     return authResult;
// }

