import 'package:flutter/material.dart';
import 'package:flutter_calendar/flutter_calendar.dart';

class Worksheets extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WorksheetState();
  }
}


class WorksheetState extends State<Worksheets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Worksheets'),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Calendar(
        isExpandable: true,
      ),
    );
  }
}
