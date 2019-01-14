import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

class Cafeteria extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CafeteriaState();
  }
}

class CafeteriaState extends State<Cafeteria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cafeteria'),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Calendar(
        isExpandable : true
      ),
    );
  }
}
