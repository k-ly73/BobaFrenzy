import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth_result.dart';
import 'database.dart';
import 'package:firebase_database/firebase_database.dart';

class LoginPage extends StatefulWidget{
  LoginPage({this.auth, this.onSignedIn});
  final BaseAuth auth;
  final VoidCallback onSignedIn;

  @override 
  State<StatefulWidget> createState() => new _LoginPage();
}


enum FormType {
  login,
  register
}


class _LoginPage extends State<LoginPage> {
  
  String email;
  String password;
  List<User> users = List();
  FormType _formType;
  User userName;
  DatabaseReference userRef;
  final FirebaseAuth auth = FirebaseAuth.instance;
  final formKey = new GlobalKey<FormState>();

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()){
      form.save();
      userRef.push().set(userName.toJson());
      return true;
    }
    return false;
  }

  @override 
  void initState() {
    super.initState();
    userName = User("");
    userRef = FirebaseDatabase.instance.reference().child("user_name");

  }
  
  void validateAndSubmit() async {
    if(validateAndSave()){
      try {
        if(_formType == FormType.login) {   
          FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password)).user;
          print("Signed in: ${user.uid}");
        }
        else {
          FirebaseUser user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password)).user;
          print("Registered user: ${user.uid}");         
        }
        widget.onSignedIn();
      }
      catch(e) {
        print('Error: $e');
      }
 
    }
  }


  void registerAccount() async {
    formKey.currentState.reset();
    setState((){
      _formType = FormType.register;
    });
 
  }

  void loginAccount() {
    formKey.currentState.reset();
    setState((){
      _formType = FormType.login;
    });
  }
  
  var nameEditingController = TextEditingController();
  var emailEditingController = TextEditingController();
  var passwordEditingController = TextEditingController();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: new Text("Login/Register")
      ),
      body: new Stack(
        children: <Widget>[
          new Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.orange[50], Colors.orange[100]]
            ),
          ),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: buildInputs() + buildSubmitButtons()
            ),
          )

          )
        ],
        
      ),
    );
  }
  
  List<Widget> buildInputs(){
       if(_formType == FormType.login){
      return [
         new TextFormField(
          controller: emailEditingController,
          obscureText: false,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: new OutlineInputBorder(
              borderRadius: BorderRadius.all(
                const Radius.circular(10),
              )
            ),
            labelText: 'Email',
            labelStyle: TextStyle(
              fontFamily: 'Montserra',
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )
          ),
          validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
          onSaved: (value) => email = value,
          ),
        new TextFormField(
          controller: passwordEditingController,
          obscureText: true,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: new OutlineInputBorder(
              borderRadius: BorderRadius.all(
                const Radius.circular(10),
              )
            ),
            labelText: 'Password',
            labelStyle: TextStyle(
              fontFamily: 'Montserra',
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )
          ),
          validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
          onSaved: (value) => password = value,
        ),
      ];
    }
    else {
      return [
        new Container(
          margin: EdgeInsets.all(10),
          child: new Text( 
            "New Account",
            style: new TextStyle(
              fontSize: 20,
            )
          )
        ),
        new TextFormField(
          controller: nameEditingController,
          obscureText: false,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: new OutlineInputBorder(
              borderRadius: BorderRadius.all(
                const Radius.circular(10),
              )
            ),
            labelText: 'Name',
            labelStyle: TextStyle(
              fontFamily: 'Montserra',
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )
          ),
          validator: (value) => value.isEmpty ? 'Username can\'t be empty' : null,
          onSaved: (userName) => userName = userName,
        ),
        new TextFormField(
          controller: emailEditingController,
          obscureText: false,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: new OutlineInputBorder(
              borderRadius: BorderRadius.all(
                const Radius.circular(10),
              )
            ),
            labelText: 'Email',
            labelStyle: TextStyle(
              fontFamily: 'Montserra',
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )
          ),
          validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
          onSaved: (value) => email = value,
        ),
        new TextFormField(
          controller: passwordEditingController,
          obscureText: true,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: new OutlineInputBorder(
              borderRadius: BorderRadius.all(
                const Radius.circular(10),
              )
            ),
            labelText: 'Password',
            labelStyle: TextStyle(
              fontFamily: 'Montserra',
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )
          ),
          validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
          onSaved: (value) => password = value,
        ),
      ];  
    }
 
   
  }
  List<Widget> buildSubmitButtons() {
    if( _formType == FormType.login){
      return [
        new RaisedButton(
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white)
          ),
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
          ),
          onPressed: validateAndSubmit,
        ),
        new RaisedButton(
          child: Text("Sign Up"),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
          ),
          onPressed:
            registerAccount,
          
        ),
      ];  
    } 
    else {
      return [
        new RaisedButton(
          child: new Text(
            'Create an account',
            style: TextStyle(color: Colors.white)
          ),
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
          ),
          onPressed: validateAndSubmit,
        ),
        new RaisedButton(
          child: new Text("Have an account? Login"),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
          ),
          onPressed: loginAccount,
        )
      ];
    } 
  }
}


