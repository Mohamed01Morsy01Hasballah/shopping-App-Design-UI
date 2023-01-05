import 'package:flutter/material.dart';
import 'package:shopping_app_design/Screen/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      backgroundColor: Colors.white
      ),
      home: HomeScreen()
    );
  }
}

