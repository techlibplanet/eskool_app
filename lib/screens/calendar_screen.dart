import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CalendarState();
  }
}

class CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Center(
      child: Text('Calendar'),
    );
  }
}
