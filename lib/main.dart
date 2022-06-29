import 'package:flutter/material.dart';
import 'package:flutter_mentor_quiz_app_tut/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Quiz app', theme: ThemeData(primaryColor: const Color(0xFF55C1EF)), home: WelcomeScreen());
  }
}
