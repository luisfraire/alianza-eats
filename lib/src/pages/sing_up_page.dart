import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prueba1/src/colors/colors.dart';
import 'package:prueba1/widgets/back_button.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SingupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Builder(builder: (BuildContext context) {
            return backButton(context, Colors.black);
          }),
        ),
        body: Center(
          child: Container(
              child: Column(
            children: [
              Text('Crea una cuenta',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0)),
              _username(context),
              _emailInputs(context),
              _phoneInput(context),
              _dateofBirthInput(context),
              _passwordInput(context),
              _singbutton(context),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                  child: Text('aceptas los terminos y condiciones',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 13.0))),
            ],
          )),
        ));
  }
}

Widget _username(BuildContext context) {
  return Container(
      padding: EdgeInsets.only(left: 20.0),
      margin: EdgeInsets.only(top: 40.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Nombre de usuari ',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

final userController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
final confirmPassWordController = TextEditingController();

Widget _emailInputs(BuildContext context) {
  return Container(
      padding: EdgeInsets.only(left: 20.0),
      margin: EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Correo electronico ',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _phoneInput(BuildContext context) {
  return Container(
      padding: EdgeInsets.only(left: 20.0),
      margin: EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Numero de telefono',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _dateofBirthInput(BuildContext context) {
  return Container(
      padding: EdgeInsets.only(left: 20.0),
      margin: EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextField(
        controller: confirmPassWordController,
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
            hintText: 'Fecha de nacimiento',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _passwordInput(BuildContext context) {
  return Container(
      padding: EdgeInsets.only(left: 20.0),
      margin: EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
          color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
      child: TextField(
        controller: passwordController,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
            hintText: 'contraseña',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ));
}

Widget _singbutton(BuildContext context) {
  return Container(
    width: 330.0,
    height: 40.0,
    margin: EdgeInsets.only(top: 10.0),
    child: RaisedButton(
        onPressed: () {
          //
          registerUser(context);
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Text('Sing-up', style: TextStyle(color: Colors.white))),
  );
}

void registerUser(BuildContext context) {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  users
      .add({
        "email": emailController.text,
        'usuario': userController.text, // John Doe
        'password': passwordController.text, // Stokes and Sons
      })
      .then((value) => {Navigator.pushNamed(context, 'login')})
      .catchError((error) => print("Failed to add user: $error"));
}
