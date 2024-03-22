import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/auth/login_creen.dart';

void main() {
  runApp(MaterialApp(
      title: 'We Chat',
      theme: ThemeData(
          iconTheme: IconThemeData(color: Colors.black),
          appBarTheme: AppBarTheme(
            elevation: 1,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
            backgroundColor: Colors.white,
          )),
      home: const LoginScreen()));
}
