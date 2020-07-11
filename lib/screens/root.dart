import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum AuthStatus{notLoggedin,loggedIn,}

class Root extends StatefulWidget {
  static String id ='root';
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  AuthStatus _authStatus=AuthStatus.notLoggedin,
  @override
  Widget build(BuildContext context) {
    Widget retval;
    switch

    return retval;
  }
}
