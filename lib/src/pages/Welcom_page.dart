import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';

class WelcomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: new AssetImage('images/logo.jpg'),
        ))),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Text('Entrega segura',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0)),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Text('Desde donde te encuentres',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 17.0)),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 300.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 110.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text('Log in'),
                ),
              ),
            ),
            Container(
              width: 300.0,
              height: 45.0,
              margin: EdgeInsets.only(top: 10.0),
              child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('images/facebook.png'),
                        width: 20.0,
                        height: 20.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text('Conectec with facebook',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0)),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ],
    ));
  }
}
