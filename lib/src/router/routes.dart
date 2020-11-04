import 'package:flutter/material.dart';

import 'package:prueba1/src/pages/Welcom_page.dart';
import 'package:prueba1/src/pages/Login_page.dart';
import 'package:prueba1/src/pages/confirmation.dart';
import 'package:prueba1/src/pages/forgot_password.dart';
import 'package:prueba1/src/pages/sing_up_page.dart';
import 'package:prueba1/src/tabs/tabs_pages.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomPage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPassword(),
  'sing-up': (BuildContext context) => SingupPage(),
  'confirmation': (BuildContext context) => Confirmation(),
  'tabs': (BuildContext context) => TabesPage()
};
