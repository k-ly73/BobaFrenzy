// part of firebase_auth;

// class AuthResult {
//   AuthResult._(this._data, FirebaseApp app)
//       : user = FirebaseUser._(_data.['user'].cast<String, dynamic>(), app);

//   final Map<String, dynamic> _data;


//   final FirebaseUser user;

//   AdditionalUserInfo get additionalUserInfo => _data.additionalUserInfo == null
//       ? null
//       : AdditionalUserInfo._(_data.additionalUserInfo);

//   @override
//   String toString() {
//     return '$runtimeType($_data)';
//   }
// }