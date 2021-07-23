import 'package:flutter/material.dart';
import 'package:find_teachersapp/screens/find_teacher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          headline2: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      ),
      title: 'Find A Teacher',
      home: FindTeacher(),
    );
  }
}
