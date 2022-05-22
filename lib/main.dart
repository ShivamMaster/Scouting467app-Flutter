// ignore_for_file: deprecated_member_use, unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

import 'Screens/main_screen.dart';
//import 'Screens/working_screen.dart';;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  var title = "FRC 467 Scouting Website";

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Team 467 Scouting App';
    // ignore: dead_code
    return MaterialApp(
        title: appTitle,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(appTitle),
            // theme: ThemeData(
            //   visualDensity: VisualDensity.adaptivePlatformDensity,
            // ),
          ),
          body: MyCustomForm(),

          //theme: ThemeData(
          //primarySwatch: Colors.blue,
          //),
        ));
  }
}

// // Create a Form widget.
