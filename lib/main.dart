import 'package:flutter/material.dart';
import 'package:navigation_codeclan/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'FiraSans',),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

