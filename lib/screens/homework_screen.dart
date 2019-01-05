import 'package:flutter/material.dart';

class Homework extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeworkState();
  }
}

class HomeworkState extends State<Homework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Work'),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Center(
      child: Text('Home Work'),
    );
  }
}
