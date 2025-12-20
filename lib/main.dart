import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// void main() is start point of Dart.
// runApp() can input Widget only.
// MyApp() is the root of your application.
// Widget: Flutter 화면의 최소 단위

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Main Page', //Devide to system level
      home: Scaffold(
        backgroundColor: Colors.pink,
      )
    );
  }
}