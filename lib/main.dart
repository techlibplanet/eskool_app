import 'package:flutter/material.dart';
import 'package:eskool_app/screens/dashboard_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Raleway'

      ),
      home: Dashboard(),
    );
  }
}
