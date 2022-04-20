import 'package:flutter/material.dart';
import 'package:day2/login.dart';

void main() {
  runApp(LogApp());
}

class LogApp extends StatelessWidget {
  const LogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
