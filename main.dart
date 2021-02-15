import 'package:flutter/material.dart';
import 'package:logIn/button.dart';
import 'package:logIn/check_box.dart';
import 'package:logIn/password_field.dart';
import 'package:logIn/button.dart';
import 'package:logIn/check_box.dart';
import 'package:logIn/id_field.dart';
import 'package:logIn/password_field.dart';

import 'id_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(colors: [
                Colors.pinkAccent,
                Color(0xFF6F35A6),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              SizedBox(height: size.height * 0.29),
              IdTextField("ID"),
              PassTextField("Password"),
              Button(),
              CheckBox(),
            ],
          )),
    ));
  }
}
