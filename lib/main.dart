import 'package:flutter/material.dart';


import 'utils/boardingPageScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shexpi',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
    debugShowCheckedModeBanner: false,
      home: BoardingPageScreen(),


    );

  }
}

