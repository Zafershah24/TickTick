import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/registration_screen.dart';
import 'screens/welcome_scren.dart';
import 'screens/root.dart';

import 'screens/login_screen.dart';

import 'screens/TaskScreen.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        initialRoute: Root.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          TaskScreen.id: (context) => TaskScreen(),
          Root.id:(context) => Root(),
        }
    );
  }
}
