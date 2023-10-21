import 'package:flutter/material.dart';
import 'package:uts_2020130035/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS EDGINA - 2020130035',
      theme: ThemeData(
        // fontFamily: 'Abereto',
      ),
      home: const LogIn(),
    );
  }
}