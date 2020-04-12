import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget{
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
  FormType _formType;
  
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final formKey = new GlobalKey<FormState>();

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()){
      form.save();
      return true;
    }
    return false;
  }

  void validateAndSubmit() async {
    if(validateAndSave()){
      try {
        if(_formType == FormType.login) {
          FirebaseUser user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password)).user;
          print("Signed in: ${user.uid}");
        }
        FirebaseUser user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password)).user;
        print("Registered user: ${user.uid}");
      }
      catch(e) {
        print('Error: $e');
      }
 
    }
  }


  void registerAccount(){
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
  var emailEditingController = TextEditingController();
  var passwordEditingController = TextEditingController();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: new Text("Login/Register")
      ),
      body: new Container(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buildInputs() + buildSubmitButtons()
          ),
        )
      ),
    );
  }
  
  List<Widget> buildInputs(){
    return [
      new TextFormField(
        controller: emailEditingController,
        obscureText: false,
        decoration: InputDecoration(
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
  List<Widget> buildSubmitButtons() {
    if( _formType == FormType.login){
      return [
        new RaisedButton(
          child: Text("Login"),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
          ),
          onPressed: validateAndSubmit,
        ),
        new RaisedButton(

          textColor: Colors.white,
          color: Colors.blueAccent,
          splashColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
          ),
          child: Text("Sign Up"),
          onPressed: loginAccount,
        ),
      ];  
    } 
    else {
      return [
        new RaisedButton(
          child: new Text('Create an account'),
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