import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app55/quiz.dart';
import 'package:flutter_app55/start_screen.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Quiz(
    );
  }
}
