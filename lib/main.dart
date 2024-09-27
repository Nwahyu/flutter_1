import 'package:flutter/material.dart';
import 'package:myapp/mainScreen.dart';

void main(List<String> args) {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'my app', theme: ThemeData(), home: const Mainscreen());
  }
}
