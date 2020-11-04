import 'package:flutter/material.dart';
import 'package:prueba1/src/colors/colors.dart';
import 'package:prueba1/widgets/back_button.dart';

class Confirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext contex) {
          return backButton(context, Colors.black);
        }),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text('Verificacion de numero',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0)),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    'Ingresa tu numero telefonico para enviar un mensaje con tu codigo de verificacion',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0)),
              ),
              _phoneInput(context),
              _singbutton(context)
            ],
          ),
        ),
      ),
    );
  }
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

Widget _singbutton(BuildContext context) {
  return Container(
    width: 330.0,
    height: 40.0,
    margin: EdgeInsets.only(top: 10.0),
    child: RaisedButton(
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Text('Confirmar', style: TextStyle(color: Colors.white))),
  );
}
