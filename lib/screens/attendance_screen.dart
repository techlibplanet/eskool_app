import 'package:flutter/material.dart';

class Attendance extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AttendanceState();
  }
}

class AttendanceState extends State<Attendance>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Center(
      child: Text("Attendance"),
    );
  }

}