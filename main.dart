import 'package:flutter/material.dart';
import 'package:log_in_ui/components/button.dart';
import 'package:log_in_ui/components/check_box.dart';
import 'package:log_in_ui/components/id_field.dart';
import 'package:log_in_ui/components/password_field.dart';

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
      
        primarySwatch: Colors.blue,
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
        var size=MediaQuery.of(context).size; 

    return Scaffold(
      body:   SingleChildScrollView(
        child: Container(
          
            width:size.width,
            height:size.height,
          color: Color(0xFF4A148C),
          child: Column(
            children: [
              SizedBox(height:size.height*0.35),
              IdTextField("ID"),
              PassTextField("Password"),
              Button(),
              CheckBox(),
            ],
          )),
      )
    );
  }
}
