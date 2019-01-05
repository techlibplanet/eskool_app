import 'package:flutter/material.dart';

class TimeTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TimeTableState();
  }
}

class TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Table'),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Center(
      child: Text('Time Table'),
    );
  }
}
