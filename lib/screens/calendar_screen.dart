import 'package:flutter/material.dart';
//import 'package:flutter_calendar/flutter_calendar.dart';
import 'package:eskool_app/helper/my_calendar.dart';

class CalendarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CalendarState();
  }
}

class CalendarState extends State<CalendarScreen> {
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
    return Container(
      margin: EdgeInsets.all(8.0),
        child: MyCalendar(
      isExpandable: true,
    ));
  }
}
