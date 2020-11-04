import 'package:flutter/material.dart';
import 'package:prueba1/widgets/back_button.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.black);
            })),
        body: Center(
            child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text('Olvidaste tu contraseña?',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0)),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    'Introduce tu correo electronico para recuperar tu contraseña',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0)),
              ),
              _emailInput(),
              _buttonLogin(context)
            ],
          ),
        )));
  }
}

Widget _emailInput() {
  return Container(
      width: 330.0,
      height: 40.0,
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(left: 10.0, top: 15.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: 'Tu email',
              border: OutlineInputBorder(borderSide: BorderSide.none))));
}

Widget _buttonLogin(BuildContext context) {
  return Container(
    width: 330.0,
    height: 40.0,
    margin: EdgeInsets.only(top: 10.0),
    child: RaisedButton(
        onPressed: () {
          _showAlerta(context);
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Text('Recuperar', style: TextStyle(color: Colors.white))),
  );
}

void _showAlerta(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 300,
            child: Column(
              children: [
                Image(
                  image: AssetImage('images/candado.jpg'),
                  width: 130,
                  height: 130,
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text('Tu contraseña a sido restablecida',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                ),
                _doneButton(context)
              ],
            ),
          ),
        );
      });
}

Widget _doneButton(BuildContext context) {
  return Container(
    width: 330.0,
    height: 40.0,
    margin: EdgeInsets.only(top: 10.0),
    child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'login');
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: Text('Recuperar', style: TextStyle(color: Colors.white))),
  );
}
