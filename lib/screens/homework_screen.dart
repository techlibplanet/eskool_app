import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

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
    return Container(
      child: Calendar(
        isExpandable: true,
      ),
    );
  }
}
