import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'home_page.dart';

void main() {
  print('Welcome to main()');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key}){
    print('Welcome to MyApp::MyApp()');
  }

  @override
  Widget build(BuildContext context) {
    print('Welcome to MyApp::build()');
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
         title: Text('myCalculator'),
          backgroundColor: Colors.orange,
        ),
        body: HomePage(),
      ),
    );
  }
}

