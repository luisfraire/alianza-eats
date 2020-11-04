import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prueba1/src/colors/colors.dart';
import 'package:prueba1/widgets/back_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.black));

    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Image(
                width: double.infinity,
                height: 350.0,
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              child: backButton(context, Colors.white),
            )
          ],
        ),
        Transform.translate(
          offset: Offset(0.0, -60.0),
          child: Container(
            width: double.infinity,
            height: 338,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    Text("Bienvenido",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0)),
                    Text("Ingresa a tu cuenta",
                        style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0)),
                    _emailInput(),
                    _passwordInput(),
                    _buttonLogin(context),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'forgot-password');
                        },
                        child: Text('¿Olvidaste tu contraseña?',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'sing-up');
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('¿No tienes cuenta?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0)),
                            Text('Registrar',
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15.0))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
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
              hintText: 'Email',
              border: OutlineInputBorder(borderSide: BorderSide.none))));
}

Widget _passwordInput() {
  return Container(
      width: 330.0,
      height: 40.0,
      margin: EdgeInsets.only(top: 8.3),
      padding: EdgeInsets.only(left: 10.0, top: 15.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(142, 142, 147, 1.2),
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(borderSide: BorderSide.none))));
}

Widget _buttonLogin(BuildContext context) {
  return Container(
    width: 330.0,
    height: 40.0,
    margin: EdgeInsets.only(top: 20.0),
    child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'tabs');
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Text('Log in', style: TextStyle(color: Colors.white))),
  );
}
